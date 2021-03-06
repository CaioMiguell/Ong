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

ActiveRecord::Schema.define(version: 20180401170326) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "street"
    t.string "number"
    t.string "complement"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date_ini"
    t.bigint "animal_id"
    t.bigint "vet_id"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_animal_histories_on_animal_id"
    t.index ["vet_id"], name: "index_animal_histories_on_vet_id"
  end

  create_table "animals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "image"
    t.string "species"
    t.string "breed"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "person"
    t.bigint "donor_type_id"
    t.string "amount"
    t.bigint "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_donations_on_animal_id"
    t.index ["donor_type_id"], name: "index_donations_on_donor_type_id"
  end

  create_table "donor_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "fone"
    t.string "crv"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_vets_on_address_id"
  end

  add_foreign_key "animal_histories", "animals"
  add_foreign_key "animal_histories", "vets"
  add_foreign_key "donations", "animals"
  add_foreign_key "donations", "donor_types"
  add_foreign_key "vets", "addresses"
end
