# == Schema Information
# Schema version: 20100226152119
#
# Table name: roles
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Role < ActiveRecord::Base
	has_many :assignments
	has_many :users, :through => :assignments
end
