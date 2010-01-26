class AddSerialUniquenessIndex < ActiveRecord::Migration
  def self.up
  	add_index :assets, :serial, :unique => true
  end

  def self.down
  	remove_index :assets, :serial
  end
end
