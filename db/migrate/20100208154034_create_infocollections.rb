class CreateInfocollections < ActiveRecord::Migration
  def self.up
    create_table :infocollections do |t|
      t.string :servertyp
      t.timestamps
    end
  end
  
  def self.down
    drop_table :infocollections
  end
end
