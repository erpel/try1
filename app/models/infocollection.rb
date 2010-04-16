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
	
	
	#Alle Servertypen aus der DB laden und in rails einen passenden suchen.
	#Hier wird r�ckw�rts geguckt welcher servertyp im �bergebenen String vorkommt und das 
	#entsprechende Objekt zur�ck gegeben
	def self.search_servertyp(name)
		Infocollection.all.each do |collection|
			return collection if name.downcase.include? collection.servertyp.downcase
		end
		return 
	end

end
