class AddNameToInfocollection < ActiveRecord::Migration
  def self.up
    add_column :infocollections, :name, :string
  end

  def self.down
    remove_column :infocollections, :name
  end
end
