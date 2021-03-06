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

ActiveRecord::Schema.define(version: 2022_03_08_070735) do

  create_table "active_dynamic_attributes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "customizable_id", null: false
    t.string "customizable_type", limit: 50
    t.string "name"
    t.string "display_name", null: false
    t.integer "datatype"
    t.text "value"
    t.boolean "required", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["customizable_id"], name: "index_active_dynamic_attributes_on_customizable_id"
    t.index ["customizable_type"], name: "index_active_dynamic_attributes_on_customizable_type"
  end

  create_table "project_attributes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.integer "datatype"
    t.boolean "required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
