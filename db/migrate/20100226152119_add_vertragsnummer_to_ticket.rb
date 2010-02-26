class AddVertragsnummerToTicket < ActiveRecord::Migration
  def self.up
    add_column :tickets, :vertragsnummer, :string
  end

  def self.down
    remove_column :tickets, :vertragsnummer
  end
end
