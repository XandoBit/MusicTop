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

ActiveRecord::Schema.define(version: 20141228232644) do

  create_table "cds", force: true do |t|
    t.string   "grupo"
    t.string   "titulo"
    t.text     "descripcion"
    t.text     "enlace"
    t.date     "fecha"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cds", ["user_id", "created_at"], name: "index_cds_on_user_id_and_created_at"
  add_index "cds", ["user_id"], name: "index_cds_on_user_id"

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "pass"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.boolean  "admin"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "contraseña"
    t.string   "ciudad"
    t.string   "gusto"
    t.decimal  "edad"
    t.string   "correo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "email"
  end

end
