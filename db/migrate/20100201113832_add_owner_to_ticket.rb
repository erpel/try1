class AddOwnerToTicket < ActiveRecord::Migration
  def self.up
    add_column :tickets, :owner, :string
  end

  def self.down
    remove_column :tickets, :owner
  end
end
