# == Schema Information
# Schema version: 20100208153152
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
#  owner        :string(255)
#

class Ticket < ActiveRecord::Base
	
#implementierung von short_langtext nach 
#http://de.wikibooks.org/wiki/Ruby_on_Rails:_Erste_Schritte#Erkl.C3.A4rung_k.C3.BCrzen
	class ActionviewTextHelper
		include ActionView::Helpers::TextHelper
	end
	
	def texthelper
		@h ||= ActionviewTextHelper.new
	end
	
	def short_langtext
		texthelper.truncate(self.langtext)
	end
end
