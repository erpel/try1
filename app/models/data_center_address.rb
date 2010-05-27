# == Schema Information
# Schema version: 20100301100709
#
# Table name: data_center_addresses
#
#  id             :integer         not null, primary key
#  locationstring :string(255)
#  address        :text
#  created_at     :datetime
#  updated_at     :datetime
#

class DataCenterAddress < ActiveRecord::Base
  attr_accessible :locationstring, :address
  
	def self.matching_address(locationstring)
		DataCenterAddress.all.each do |address|
			return address if locationstring.downcase.include? address.locationstring.downcase
		end
		return 
	end
end
