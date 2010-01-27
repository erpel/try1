class SerialIndex < ActiveRecord::Migration
	def self.up
		add_index :assets, :serial
	end

	def self.down
		remove_index :assets, :serial
	end
end