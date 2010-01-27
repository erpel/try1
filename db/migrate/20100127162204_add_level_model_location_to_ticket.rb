class AddLevelModelLocationToTicket < ActiveRecord::Migration
  def self.up
    add_column :tickets, :level, :string
    add_column :tickets, :model, :string
    add_column :tickets, :location, :string
  end

  def self.down
    remove_column :tickets, :location
    remove_column :tickets, :model
    remove_column :tickets, :level
  end
end
