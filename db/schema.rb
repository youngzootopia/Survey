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

ActiveRecord::Schema.define(version: 20161107081533) do

  create_table "clists", primary_key: "CID", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Category"
    t.string   "ProgramName"
    t.integer  "EpisodeNum"
    t.string   "VideoURL"
    t.string   "VideoFileName"
    t.string   "VideoThumb"
    t.float    "FPS",               limit: 24
    t.datetime "RegisterDateTime"
    t.datetime "LastSavedDateTime"
    t.integer  "TagStatus"
    t.string   "User"
    t.string   "ProgramNameKor"
  end

  create_table "filterings", primary_key: "sUserID", id: :string, default: "", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "serviceProvider"
    t.string "degree"
    t.string "price"
  end

  create_table "shot_infos", primary_key: "ShotID", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ShotNum"
    t.integer "StartFrame"
    t.integer "EndFrame"
    t.string  "ThumbURL"
    t.integer "CID"
    t.index ["CID"], name: "fk_CID_from_clist", using: :btree
  end

  create_table "users", primary_key: "sUserID", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",            limit: 20
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest"
    t.date     "birthday"
    t.string   "sex",             limit: 2
    t.string   "married",         limit: 2
    t.string   "children",        limit: 2
    t.string   "job",             limit: 100
    t.string   "hobby",           limit: 100
    t.integer  "currentShot"
    t.integer  "group"
  end

  add_foreign_key "filterings", "users", column: "sUserID", primary_key: "sUserID", name: "fk_sUserID_from_users", on_delete: :cascade
  add_foreign_key "shot_infos", "clists", column: "CID", primary_key: "CID", name: "fk_CID_from_clist", on_delete: :cascade
end
