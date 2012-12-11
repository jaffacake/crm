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

ActiveRecord::Schema.define(:version => 20121211123717) do

  create_table "fyp_models", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "fyp_models", ["email"], :name => "index_fyp_models_on_email", :unique => true
  add_index "fyp_models", ["reset_password_token"], :name => "index_fyp_models_on_reset_password_token", :unique => true

  create_table "fyp_schema_migrations", :id => false, :force => true do |t|
    t.string "version", :null => false
  end

  add_index "fyp_schema_migrations", ["version"], :name => "fyp_unique_schema_migrations", :unique => true

  create_table "fyp_users", :force => true do |t|
    t.string   "username",               :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "fyp_users", ["email"], :name => "index_fyp_users_on_email", :unique => true
  add_index "fyp_users", ["reset_password_token"], :name => "index_fyp_users_on_reset_password_token", :unique => true
  add_index "fyp_users", ["username"], :name => "index_fyp_users_on_username", :unique => true

end
