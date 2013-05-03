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

ActiveRecord::Schema.define(:version => 20130414040142) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.text     "brief_description"
    t.text     "detail_description"
    t.string   "author_name"
    t.string   "more_link"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.boolean  "active",             :default => true
  end

  create_table "articles_topics", :force => true do |t|
    t.integer "article_id"
    t.integer "topic_id"
  end

  create_table "attachments", :force => true do |t|
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.string   "attachable_content_type"
    t.string   "attachable_file_name"
    t.string   "attachable_file_size"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "active",      :default => true
    t.string   "description"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "short_code"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "doctorate_graduates", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "status",      :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "external_url"
    t.text     "description"
    t.date     "event_from"
    t.date     "event_to"
    t.decimal  "event_fee",            :precision => 10, :scale => 0
    t.decimal  "fee_for_per_workshop", :precision => 10, :scale => 0
    t.boolean  "online_event"
    t.string   "event_address"
    t.boolean  "active",                                              :default => true
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
  end

  create_table "job_categories", :force => true do |t|
    t.string   "name"
    t.integer  "job_type_id"
    t.string   "description"
    t.boolean  "status",      :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "job_locations", :force => true do |t|
    t.integer  "job_id"
    t.integer  "job_country_id"
    t.string   "job_city"
    t.integer  "job_state_id"
    t.string   "job_zip"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "job_packages", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "amount",        :precision => 10, :scale => 0
    t.integer  "no_of_credits"
    t.boolean  "status",                                       :default => true
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
  end

  create_table "job_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "status",      :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "job_validities", :force => true do |t|
    t.string   "name"
    t.decimal  "amount",        :precision => 10, :scale => 0
    t.integer  "no_of_credits"
    t.boolean  "status",                                       :default => true
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.integer  "job_type_id"
    t.integer  "job_category_id"
    t.string   "email"
    t.string   "url"
    t.integer  "country_id"
    t.string   "full_name"
    t.string   "street"
    t.string   "street1"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.datetime "from_date"
    t.datetime "to_date"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "job_package_id"
    t.integer  "job_validity_id"
    t.text     "required_qualification"
    t.text     "preferred_qualification"
    t.text     "additional_notes"
  end

  create_table "organisations", :force => true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "pin"
    t.string   "phone"
    t.string   "website"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "upload1_file_name"
    t.string   "upload1_content_type"
    t.integer  "upload1_file_size"
    t.datetime "upload1_updated_at"
    t.string   "upload2_file_name"
    t.string   "upload2_content_type"
    t.integer  "upload2_file_size"
    t.datetime "upload2_updated_at"
    t.string   "upload3_file_name"
    t.string   "upload3_content_type"
    t.integer  "upload3_file_size"
    t.datetime "upload3_updated_at"
    t.string   "upload4_file_name"
    t.string   "upload4_content_type"
    t.integer  "upload4_file_size"
    t.datetime "upload4_updated_at"
    t.string   "upload5_file_name"
    t.string   "upload5_content_type"
    t.integer  "upload5_file_size"
    t.datetime "upload5_updated_at"
  end

  create_table "post_graduates", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "status",      :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "short_code"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "under_graduates", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "status",      :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "first_name",             :default => "", :null => false
    t.string   "last_name",              :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "user_role"
    t.boolean  "is_admin"
    t.string   "institution"
    t.integer  "organisation_id"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
