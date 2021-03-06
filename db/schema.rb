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

ActiveRecord::Schema.define(version: 20180926071901) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "race_id"
    t.integer "klass_id"
    t.integer "strength"
    t.integer "agility"
    t.integer "intellect"
    t.integer "cunning"
    t.integer "willpower"
    t.integer "presence"
    t.integer "hitpoints"
    t.integer "stamina"
    t.integer "mana"
    t.integer "armor"
    t.integer "resistence"
    t.integer "exp", default: 0
  end

  create_table "characters_skills", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "skill_id", null: false
    t.index ["character_id", "skill_id"], name: "index_characters_skills_on_character_id_and_skill_id"
    t.index ["skill_id", "character_id"], name: "index_characters_skills_on_skill_id_and_character_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klasses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.integer "level", default: 0
    t.integer "hitpoints", default: 10
    t.integer "stamina", default: 10
    t.integer "mana", default: 0
    t.integer "armor", default: 0
    t.integer "resistence", default: 0
    t.integer "strength", default: 1
    t.integer "agility", default: 1
    t.integer "intellect", default: 1
    t.integer "cunning", default: 1
    t.integer "willpower", default: 1
    t.integer "presence", default: 1
    t.integer "race_id"
    t.integer "klass_id"
    t.text "notice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "npcs_skills", id: false, force: :cascade do |t|
    t.integer "npc_id", null: false
    t.integer "skill_id", null: false
    t.integer "id"
    t.integer "primary_key"
    t.integer "level", default: 0
    t.index ["npc_id", "skill_id"], name: "index_npcs_skills_on_npc_id_and_skill_id"
    t.index ["skill_id", "npc_id"], name: "index_npcs_skills_on_skill_id_and_npc_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bound_attribute"
    t.integer "skill_type"
    t.integer "klass_id"
  end

end
