# == Schema Information
# Schema version: 20100301100709
#
# Table name: e_mail_texts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  subject    :string(255)
#  body       :text
#  to         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class EMailText < ActiveRecord::Base
  attr_accessible :name, :subject, :body, :to
end
