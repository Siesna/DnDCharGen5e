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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150119203959) do

  create_table "abilities", force: true do |t|
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abilities", ["character_id"], name: "index_abilities_on_character_id"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "race"
    t.string   "character_class"
    t.string   "background"
    t.string   "alignment"
    t.integer  "experience"
    t.integer  "level"
    t.integer  "speed"
    t.integer  "proficiency_bonus"
    t.integer  "max_hp"
    t.integer  "armor_class"
    t.string   "hit_die"
    t.integer  "total_hit_die"
    t.string   "languages"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "meats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "saving_throws", force: true do |t|
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "ability_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "saving_throws", ["ability_id"], name: "index_saving_throws_on_ability_id"

  create_table "scores", force: true do |t|
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "integerelligent"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "str_mod"
    t.integer  "dex_mod"
    t.integer  "con_mod"
    t.integer  "integer_mod"
    t.integer  "wis_mod"
    t.integer  "cha_mod"
    t.integer  "str_saving_throw"
    t.integer  "dex_saving_throw"
    t.integer  "con_saving_throw"
    t.integer  "integer_saving_throw"
    t.integer  "wis_saving_throw"
    t.integer  "cha_saving_throw"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["character_id"], name: "index_scores_on_character_id"

  create_table "skills", force: true do |t|
    t.integer  "acrobatics"
    t.integer  "animal_handling"
    t.integer  "arcana"
    t.integer  "athletics"
    t.integer  "deception"
    t.integer  "history"
    t.integer  "insight"
    t.integer  "intimidation"
    t.integer  "investigation"
    t.integer  "medicine"
    t.integer  "nature"
    t.integer  "perception"
    t.integer  "performance"
    t.integer  "persuasion"
    t.integer  "religion"
    t.integer  "sleight_of_hand"
    t.integer  "stealth"
    t.integer  "survival"
    t.integer  "ability_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["ability_id"], name: "index_skills_on_ability_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
