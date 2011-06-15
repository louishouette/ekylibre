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

class MandatesController < ApplicationController
  manage_restfully :entity_id=>"@current_company.entities.find(params[:entity_id]).id rescue 0"

  list(:conditions=>mandates_conditions) do |t|
    t.column :full_name, :through=>:entity, :url=>true
    t.column :title
    t.column :organization
    t.column :family
    t.column :started_on
    t.column :stopped_on
    t.action :edit
    t.action :destroy, :method=>:delete, :confirm=>:are_you_sure_you_want_to_delete
  end

  # Displays the main page with the list of mandates
  def index
    @entities = @current_company.entities    
    @organizations = @current_company.mandates.find(:all, :select=>' DISTINCT organization ')
    session[:mandates] ||= {}
    session[:mandates][:organization] = params[:organization]||session[:mandates][:organization]||''
    session[:mandates][:date] = params[:date]||session[:mandates][:date]||Date.today
  end

  def configure
    notify(:no_existing_mandates, :now) if @current_company.mandates.size == 0
   
    filters = { :no_filters => '', :contains => '%X%', :is => 'X', :begins => 'X%', :finishes => '%X', :not_contains => '%X%', :not_is  => 'X', :not_begins => 'X%', :not_finishes => '%X' }
    shortcuts = { :fam => :family, :org => :organization, :tit => :title } 
    @filters = filters.collect{|f,k| [tc(f), f]}.sort

    if request.post?
      notify(:specify_updates, :error, :now) unless params[:columns].detect{|k,v| !v[:update].blank?}
      notify(:specify_filter, :error, :now)  unless params[:columns].detect{|k,v| !v[:filter].blank?}
      return if has_notifications?
      
      conditions = ["company_id = ?", @current_company.id]
      updates = "updated_at = CURRENT_TIMESTAMP"
      for p, v in params[:columns] do
        if v[:filter].to_sym != :no_filters
          conditions[0] += " AND LOWER(#{p}) "+(v[:filter].to_s.match(/^not_/) ? "NOT " : "").to_s+"LIKE ?"
          conditions << filters[v[:filter].to_sym].gsub(/X/, v[:search].lower.to_s)
        end
        updates += ", #{p} = '#{v[:new_value].gsub(/\'/,'\'\'').gsub(/\@...\@/){|x| '\'||'+shortcuts[x[1..-2].to_sym].to_s+'||\''}}'" if v[:update]
      end
      Mandate.update_all(updates, conditions)
    end
    
  end

end
