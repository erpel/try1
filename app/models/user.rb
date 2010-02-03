# == Schema Information
# Schema version: 20100203152138
#
# Table name: users
#
#  id                :integer         not null, primary key
#  login             :string(255)     not null
#  crypted_password  :string(255)     not null
#  password_salt     :string(255)     not null
#  persistence_token :string(255)     not null
#  created_at        :datetime
#  updated_at        :datetime
#  admin             :boolean
#

class User < ActiveRecord::Base
	acts_as_authentic
	
	def role_symbols
		[:admin] if admin?
	end
end
