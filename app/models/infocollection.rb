# == Schema Information
# Schema version: 20100301100709
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
  
  named_scope :matching_servertyp, lambda { |name| { :conditions => ["? LIKE '%'||servertyp||'%'", name]}}
end
