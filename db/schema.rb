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

ActiveRecord::Schema.define(version: 20170308233811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.string   "details"
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "cryptograms", force: :cascade do |t|
    t.string  "word"
    t.string  "image"
    t.integer "magic_num"
    t.string  "letter_array", array: true
    t.string  "note_array",   array: true
    t.string  "card_array",   array: true
    t.string  "chord_array",  array: true
    t.integer "riff_id"
    t.string  "synonyms",     array: true
    t.string  "definition",   array: true
  end

  create_table "riffs", force: :cascade do |t|
    t.string   "title"
    t.string   "lyrics"
    t.string   "song_id"
    t.string   "thoughts"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "sheet_music_file_name"
    t.string   "sheet_music_content_type"
    t.integer  "sheet_music_file_size"
    t.datetime "sheet_music_updated_at"
    t.string   "song_audio_file_name"
    t.string   "song_audio_content_type"
    t.integer  "song_audio_file_size"
    t.datetime "song_audio_updated_at"
  end

  create_table "songs", force: :cascade do |t|
    t.string  "title"
    t.string  "details"
    t.integer "album_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
