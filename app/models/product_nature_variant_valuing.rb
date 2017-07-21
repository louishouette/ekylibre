# = Informations
#
# == License
#
# Ekylibre - Simple agricultural ERP
# Copyright (C) 2008-2009 Brice Texier, Thibaud Merigon
# Copyright (C) 2010-2012 Brice Texier
# Copyright (C) 2012-2017 Brice Texier, David Joulin
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see http://www.gnu.org/licenses.
#
# == Table: product_nature_variant_valuings
#
#  average_cost_amount       :decimal          not null
#  amount                    :decimal          not null
#  created_at                :datetime         not null
#  id                        :integer          not null, primary key
#  updated_at                :datetime         not null
#  variant_id                :integer          not null
#


class ProductNatureVariantValuing < ActiveRecord::Base
  belongs_to :variant, class_name: 'ProductNatureVariant'

  validates :average_cost_amount, presence: true
  validates :amount, presence: true
end
