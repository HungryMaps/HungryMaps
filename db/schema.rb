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

ActiveRecord::Schema.define(version: 20140602215748) do

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "provinvia", force: true do |t|
    t.string   "nombre_provincia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provs", force: true do |t|
    t.string   "nombre_provincia"
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

end
