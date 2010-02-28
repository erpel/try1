class CreateDataCenterAddresses < ActiveRecord::Migration
  def self.up
    create_table :data_center_addresses do |t|
      t.string :locationstring
      t.text :address
      t.timestamps
    end
  end
  
  def self.down
    drop_table :data_center_addresses
  end
end
