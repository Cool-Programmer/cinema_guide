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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170213204242) do

  create_table "cinemas", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.text     "location"
    t.string   "telephone"
    t.string   "open_hour"
    t.string   "close_hour"
    t.string   "open_day"
    t.string   "close_day"
    t.string   "featured_file_name"
    t.string   "featured_content_type"
    t.integer  "featured_file_size"
    t.datetime "featured_updated_at"
  end

end
