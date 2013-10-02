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

ActiveRecord::Schema.define(:version => 20130823060055) do

  create_table "admin_users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "admin_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "craftsmen", :force => true do |t|
    t.string   "craftsman_name"
    t.string   "craftsman_name_en"
    t.string   "company"
    t.string   "company_en"
    t.string   "tel"
    t.string   "address"
    t.string   "address_en"
    t.string   "mail"
    t.text     "profile"
    t.text     "profile_en"
    t.string   "profile_image"
    t.string   "website"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "craftsmen_products", :force => true do |t|
    t.string   "product_image"
    t.string   "product_name"
    t.string   "product_name_en"
    t.integer  "craftsman_id"
    t.integer  "traditional_craft_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "craftsmen_products", ["craftsman_id"], :name => "index_craftsmen_products_on_craftsman_id"
  add_index "craftsmen_products", ["traditional_craft_id"], :name => "index_craftsmen_products_on_traditional_craft_id"

  create_table "inquiries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "japan_styles", :force => true do |t|
    t.string   "article_image"
    t.text     "article_text"
    t.text     "article_title"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "article_text_jp"
    t.text     "reference_url"
    t.text     "reference_name"
  end

  create_table "traditional_crafts", :force => true do |t|
    t.string   "crafts"
    t.string   "crafts_en"
    t.string   "categories"
    t.string   "categories_en"
    t.string   "area"
    t.string   "area_en"
    t.string   "prefecture"
    t.string   "prefecture_en"
    t.string   "craftsmen_products_id"
    t.integer  "craftsman_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "traditional_crafts", ["craftsman_id"], :name => "index_traditional_crafts_on_craftsman_id"

end
