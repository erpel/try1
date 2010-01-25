# == Schema Information
# Schema version: 20100125151231
#
# Table name: assets
#
#  id                     :integer         not null, primary key
#  kunde                  :string(255)
#  serial                 :string(255)
#  mla                    :string(255)
#  modell                 :string(255)
#  delivery_einheit       :string(255)
#  wartungsende           :date
#  standortPLZ            :string(255)
#  standortOrt            :string(255)
#  standortStrasse        :string(255)
#  standortKunde_gebaeude :string(255)
#  kontaktOSY_einheit     :string(255)
#  vertragsnummer         :string(255)
#  asset_id               :string(255)
#  restNeu                :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class Asset < ActiveRecord::Base
end
