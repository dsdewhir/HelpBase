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

ActiveRecord::Schema.define(:version => 20130614182426) do

  create_table "contacts", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "contactemail"
    t.text     "notes"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "contacts_organizations", :id => false, :force => true do |t|
    t.integer "contact_id"
    t.integer "organization_id"
  end

  create_table "invoiceitems", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "subscription_id"
    t.text     "description"
    t.decimal  "amount",          :precision => 8, :scale => 2
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "contact_id"
    t.decimal  "totalamount",     :precision => 8, :scale => 2
    t.date     "duedate"
    t.integer  "paid"
    t.text     "notes"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "opportunities", :force => true do |t|
    t.integer  "progress"
    t.integer  "status"
    t.integer  "contact_id"
    t.integer  "organization_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "organizationname"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "companyemail"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "invoice_id"
    t.date     "enddate"
    t.date     "startdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "is_admin"
    t.string   "auth_token"
  end

end
