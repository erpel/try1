# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100127113343) do

  create_table "assets", :force => true do |t|
    t.string   "kunde"
    t.string   "serial",                 :null => false
    t.string   "mla"
    t.string   "modell"
    t.string   "delivery_einheit"
    t.date     "wartungsende"
    t.string   "standortPLZ"
    t.string   "standortOrt"
    t.string   "standortStrasse"
    t.string   "standortKunde_gebaeude"
    t.string   "kontaktOSY_einheit"
    t.string   "vertragsnummer"
    t.string   "asset_id"
    t.string   "restNeu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assets", ["serial"], :name => "index_assets_on_serial"

  create_table "tickets", :force => true do |t|
    t.date     "datum"
    t.string   "ticketnummer"
    t.integer  "prio"
    t.string   "serial"
    t.string   "sunID"
    t.text     "langtext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
