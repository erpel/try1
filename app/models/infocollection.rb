# == Schema Information
# Schema version: 20100226152119
#
# Table name: infocollections
#
#  id         :integer         not null, primary key
#  servertyp  :string(255)
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class Infocollection < ActiveRecord::Base
  attr_accessible :servertyp, :name
  has_many :infobits, :dependent => :delete_all
  has_many :infocollections
  
  named_scope :matching_name, lambda { |name| { :conditions => ["? LIKE '%'||servertyp||'%'", name]}}
end
