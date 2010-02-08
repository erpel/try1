class CreateInfobits < ActiveRecord::Migration
  def self.up
    create_table :infobits do |t|
      t.string :kind
      t.string :name
      t.text :content
      t.timestamps
    end
  end
  
  def self.down
    drop_table :infobits
  end
end
