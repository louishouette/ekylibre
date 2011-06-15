# -*- coding: utf-8 -*-
# == License
# Ekylibre - Simple ERP
# Copyright (C) 2008-2011 Brice Texier, Thibaud Merigon
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

class OutgoingPaymentsController < ApplicationController
  manage_restfully :to_bank_on=>"Date.today", :paid_on=>"Date.today", :responsible_id=>"@current_user.id", :payee_id=>"(@current_company.entities.find(params[:payee_id]).id rescue 0)", :amount=>"params[:amount].to_f"

  list(:purchases, :conditions=>["#{Purchase.table_name}.company_id=? AND #{Purchase.table_name}.id IN (SELECT expense_id FROM #{OutgoingPaymentUse.table_name} WHERE payment_id=?)", ['@current_company.id'], ['session[:current_outgoing_payment_id]']]) do |t|
    t.column :number, :url=>true
    t.column :description, :through=>:supplier, :url=>true
    t.column :created_on
    t.column :pretax_amount
    t.column :amount
  end

  list(:conditions=>outgoing_payments_conditions, :joins=>:payee, :order=>"to_bank_on DESC", :line_class=>"(RECORD.used_amount.zero? ? 'critic' : RECORD.unused_amount>0 ? 'warning' : '')") do |t|
    t.column :number, :url=>true
    t.column :full_name, :through=>:payee, :url=>true
    t.column :paid_on
    t.column :amount, :url=>true
    t.column :used_amount
    t.column :name, :through=>:mode
    t.column :check_number
    t.column :to_bank_on
    # t.column :label, :through=>:responsible
    t.action :edit, :if=>"RECORD.updateable\?"
    t.action :destroy, :method=>:delete, :confirm=>:are_you_sure_you_want_to_delete, :if=>"RECORD.destroyable\?"
  end

  # Displays details of one outgoing payment selected with +params[:id]+
  def show
    return unless @outgoing_payment = find_and_check(:outgoing_payment)
    session[:current_outgoing_payment_id] = @outgoing_payment.id
    t3e :number=>@outgoing_payment.number, :payee=>@outgoing_payment.payee.full_name
  end

  # Displays the main page with the list of outgoing payments
  def index
    session[:outgoing_payment_state] = params[:state]||session[:outgoing_payment_state]||"all"
    session[:outgoing_payment_key]   = params[:key]||session[:outgoing_payment_key]||""    
  end

end
