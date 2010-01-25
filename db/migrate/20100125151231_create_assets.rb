class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :kunde
      t.string :serial
      t.string :mla
      t.string :modell
      t.string :delivery_einheit
      t.date :wartungsende
      t.string :standortPLZ
      t.string :standortOrt
      t.string :standortStrasse
      t.string :standortKunde_gebaeude
      t.string :kontaktOSY_einheit
      t.string :vertragsnummer
      t.string :asset_id
      t.string :restNeu

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
