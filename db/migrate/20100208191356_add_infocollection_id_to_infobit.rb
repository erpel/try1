class AddInfocollectionIdToInfobit < ActiveRecord::Migration
  def self.up
    add_column :infobits, :infocollection_id, :integer
  end

  def self.down
    remove_column :infobits, :infocollection_id
  end
end
