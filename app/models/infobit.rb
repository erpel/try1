# == Schema Information
# Schema version: 20100208153152
#
# Table name: infobits
#
#  id         :integer         not null, primary key
#  kind       :string(255)
#  name       :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Infobit < ActiveRecord::Base
  attr_accessible :kind, :name, :content
end
