# == Schema Information
# Schema version: 20100127162204
#
# Table name: tickets
#
#  id           :integer         not null, primary key
#  datum        :date
#  ticketnummer :string(255)
#  prio         :integer
#  serial       :string(255)
#  sunID        :string(255)
#  langtext     :text
#  created_at   :datetime
#  updated_at   :datetime
#  level        :string(255)
#  model        :string(255)
#  location     :string(255)
#

class Ticket < ActiveRecord::Base
end
