class AddAccreditedToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :accredited, :boolean
  end

  def self.down
    remove_column :users, :accredited
  end
end
