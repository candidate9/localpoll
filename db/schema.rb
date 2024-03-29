# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120624145814) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.string   "link"
    t.integer  "political_party_id"
    t.integer  "local_poll_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "votes_count"
  end

  create_table "constituencies", :force => true do |t|
    t.string   "name"
    t.string   "ons_code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "constituencies", ["ons_code"], :name => "index_constituencies_on_ons_code", :unique => true

  create_table "local_polls", :force => true do |t|
    t.integer  "constituency_id"
    t.integer  "poll_id"
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "political_parties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "polls", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "postcodes", :force => true do |t|
    t.string   "name"
    t.integer  "constituency_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "postcodes", ["name"], :name => "index_postcodes_on_name", :unique => true

  create_table "votes", :force => true do |t|
    t.integer  "candidate_id"
    t.integer  "local_poll_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
