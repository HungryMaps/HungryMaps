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

ActiveRecord::Schema.define(version: 20140518064752) do

  create_table "cantons", force: true do |t|
    t.string   "nombre_canton"
    t.integer  "provin_id"
    t.integer  "direccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "direccions", force: true do |t|
    t.integer  "restaurante_id"
    t.string   "señas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distritos", force: true do |t|
    t.string   "nombre_distrito"
    t.integer  "canton_id"
    t.integer  "direccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.integer  "restaurante_id"
    t.string   "nombre_platillo"
    t.float    "precio"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provins", force: true do |t|
    t.string   "nombre_provincia"
    t.integer  "direccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurantes", force: true do |t|
    t.string   "nombre_restaurante"
    t.integer  "tipo_comida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefonos", force: true do |t|
    t.integer  "restaurante_id"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
