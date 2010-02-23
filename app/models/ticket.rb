# == Schema Information
# Schema version: 20100209074519
#
# Table name: tickets
#
#  id                :integer         not null, primary key
#  datum             :date
#  ticketnummer      :string(255)
#  prio              :integer
#  serial            :string(255)
#  sunID             :string(255)
#  langtext          :text
#  created_at        :datetime
#  updated_at        :datetime
#  level             :string(255)
#  model             :string(255)
#  location          :string(255)
#  owner             :string(255)
#  infocollection_id :integer
#

class Ticket < ActiveRecord::Base

	belongs_to :infocollection
	has_many :infobits, :through => :infocollections
	
	def self.search_common(search, page)
		paginate :per_page =>10, :page => page, :order => "created_at DESC",
		 :conditions => ["ticketnummer LIKE :search OR serial LIKE :search OR sunid LIKE :search OR langtext LIKE :search",
		  { :search => "%#{search}%" }]
	end

	def info_collection
		@info_collection ||= Infocollection.matching_name(model).first
	end

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
