class CreateEMailTexts < ActiveRecord::Migration
  def self.up
    create_table :e_mail_texts do |t|
      t.string :name
      t.string :subject
      t.text :body
      t.string :to
      t.timestamps
    end
  end
  
  def self.down
    drop_table :e_mail_texts
  end
end
