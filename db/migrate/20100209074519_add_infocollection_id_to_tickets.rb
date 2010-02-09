class AddInfocollectionIdToTickets < ActiveRecord::Migration
  def self.up
    add_column :tickets, :infocollection_id, :integer
  end

  def self.down
    remove_column :tickets, :infocollection_id
  end
end
