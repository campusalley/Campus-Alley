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

ActiveRecord::Schema.define(:version => 20120401235316) do

  create_table "institutions", :force => true do |t|
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "name",       :limit => 200
  end

  create_table "posts", :force => true do |t|
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "title",             :limit => 200
    t.string   "description"
    t.integer  "user_id_id"
    t.integer  "institution_id_id"
    t.integer  "venue_id_id"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "first_name",      :limit => 50
    t.string   "last_name",       :limit => 50
    t.string   "email",           :limit => 50
    t.string   "hashed_password"
    t.integer  "institution_id"
  end

  create_table "venues", :force => true do |t|
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "name",              :limit => 200
    t.decimal  "location_x"
    t.decimal  "location_y"
    t.integer  "institution_id_id"
  end

end
