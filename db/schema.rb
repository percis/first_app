# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20140131092849) do

  create_table "amendments", :force => true do |t|
    t.string   "c_code",     :limit => 2
    t.string   "c_name",     :limit => 35
    t.integer  "tran_id"
    t.integer  "priority",   :limit => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mgamedefinitions", :force => true do |t|
    t.integer  "formatid"
    t.integer  "typeid"
    t.integer  "min_players"
    t.integer  "max_players"
    t.float    "entryfee"
    t.integer  "drop_pts"
    t.integer  "maxscore"
    t.integer  "usebot"
    t.string   "note"
    t.integer  "min_ante"
    t.integer  "max_ante"
    t.integer  "min_buyin"
    t.integer  "max_buyin"
    t.integer  "min_stake"
    t.integer  "max_stake"
    t.integer  "gametimer"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
