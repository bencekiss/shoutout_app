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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170307231933) do

  create_table "authentications", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider", "uid"], name: "index_authentications_on_provider_and_uid"
  end
=======
ActiveRecord::Schema.define(version: 20170308030623) do
>>>>>>> 0658913191102303d06212b664f2526941e39dca

  create_table "redemptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "reward_id"
    t.boolean  "redemption_status", default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "rest_image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "owner_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "name"
    t.text     "description"
    t.integer  "point_value"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "active",        default: true
  end

  create_table "shouts", force: :cascade do |t|
    t.integer  "twitter_id"
    t.string   "twitter_text"
    t.string   "twitter_image"
    t.integer  "retweets"
    t.integer  "favourites"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "shout_image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "avatar"
<<<<<<< HEAD
    t.string   "uid"
    t.string   "token"
    t.string   "secret"
    t.string   "profile_image"
    t.string   "t_name"
    t.string   "provider"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
=======
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "token"
    t.string   "secret"
    t.string   "profile_image"
>>>>>>> 0658913191102303d06212b664f2526941e39dca
  end

end
