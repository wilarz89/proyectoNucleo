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

ActiveRecord::Schema.define(version: 20180420124629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipos", force: :cascade do |t|
    t.integer "cod_equipo"
    t.text "nom_equipo"
    t.boolean "activo_equipo"
    t.float "porcentaje"
    t.datetime "fecha_creacion"
    t.bigint "grupos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grupos_id"], name: "index_equipos_on_grupos_id"
  end

  create_table "grupos", force: :cascade do |t|
    t.integer "cod_tipo_equipo"
    t.text "nom_tipo_equipo"
    t.boolean "activo_tipo_equipo"
    t.datetime "fecha_creacion"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resultados", force: :cascade do |t|
    t.integer "cod_resultado"
    t.text "enfrentamiento"
    t.integer "puntos_partido"
    t.integer "goles_marcados"
    t.integer "goles_recibidos"
    t.bigint "equipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipo_id"], name: "index_resultados_on_equipo_id"
  end

  add_foreign_key "equipos", "grupos", column: "id", on_delete: :cascade
  add_foreign_key "resultados", "equipos", column: "id", on_delete: :cascade
end
