# == Schema Information
# Schema version: 20100226152119
#
# Table name: infobits
#
#  id                :integer         not null, primary key
#  kind              :string(255)
#  name              :string(255)
#  content           :text
#  created_at        :datetime
#  updated_at        :datetime
#  infocollection_id :integer
#

class Infobit < ActiveRecord::Base
  attr_accessible :kind, :name, :content, :infocollection_id
  belongs_to :infocollection
end
