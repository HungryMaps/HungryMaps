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

ActiveRecord::Schema.define(version: 20140625010654) do

  create_table "estados", force: true do |t|
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opinions", force: true do |t|
    t.integer  "restaurante_id"
    t.string   "comentario"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordens", force: true do |t|
    t.integer  "user_id"
    t.integer  "restaurante_id"
    t.string   "productos"
    t.float    "precio"
    t.string   "descripcion"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "estado_id"
  end

  create_table "productos", force: true do |t|
    t.string   "nombre_producto"
    t.integer  "precio"
    t.string   "descripcion"
    t.integer  "tipo_producto_id"
    t.integer  "restaurante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurantes", force: true do |t|
    t.string   "nombre_restaurante"
    t.integer  "telefono"
    t.string   "correo_electronico"
    t.integer  "fax"
    t.integer  "tipo_comida_id"
    t.string   "señas"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ubicacion_id"
    t.integer  "user_id"
    t.integer  "opinion_id"
  end

  create_table "tipo_comidas", force: true do |t|
    t.string   "tipo_comida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_productos", force: true do |t|
    t.string   "tipo_producto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubicacions", force: true do |t|
    t.string   "provincia"
    t.string   "canton"
    t.string   "distrito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "tipo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: true do |t|
    t.integer  "restaurante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

end
