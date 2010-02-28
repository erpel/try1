# == Schema Information
# Schema version: 20100228214716
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
  
	named_scope :matching_address, lambda { |address| { :conditions => ["? LIKE '%'||locationstring||'%'", address]}}

end
