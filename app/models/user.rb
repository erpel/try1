# == Schema Information
# Schema version: 20100209074519
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
#  accredited        :boolean
#

class User < ActiveRecord::Base
	acts_as_authentic
	has_many :assignments
	has_many :roles, :through => :assignments
	
	def role_symbols
		#roles = [:admin, :accredited] if admin?
		#roles = [:accredited] if accredited?
		#return roles
		roles.map do |role|
			role.name.underscore.to_sym
		end
	end
end
