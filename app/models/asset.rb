# == Schema Information
# Schema version: 20100301100709
#
# Table name: assets
#
#  id                     :integer         not null, primary key
#  kunde                  :string(255)
#  serial                 :string(255)     not null
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
	#validates_uniqueness_of :serial, :case_sensitive => false
	validates_presence_of :serial
	
	def self.search_serial(search, page)
		paginate :per_page => 10, :page => page,
			:conditions => ['serial LIKE ?', "%#{search}%"]
	end
	
	
	comma do
		kunde
		serial
		mla
		modell
		delivery_einheit
		wartungsende
		standortPLZ
		standortOrt
		standortStrasse
		standortKunde_gebaeude
		kontaktOSY_einheit
		vertragsnummer
		asset_id
		restNeu
	end
end
