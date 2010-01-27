class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.date :datum
      t.string :ticketnummer
      t.integer :prio
      t.string :serial
      t.string :sunID
      t.text :langtext

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
