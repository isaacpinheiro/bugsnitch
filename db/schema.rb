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

ActiveRecord::Schema.define(version: 20160531202721) do

  create_table "anexos", force: :cascade do |t|
    t.text     "arquivo"
    t.datetime "data_hora",     null: false
    t.integer  "registro_id",   null: false
    t.integer  "comentario_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "anexos", ["comentario_id"], name: "index_anexos_on_comentario_id"
  add_index "anexos", ["registro_id"], name: "index_anexos_on_registro_id"

  create_table "comentarios", force: :cascade do |t|
    t.text     "texto_comentario",   null: false
    t.datetime "data_hora",          null: false
    t.integer  "registro_id",        null: false
    t.integer  "usuario_projeto_id", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "comentarios", ["registro_id"], name: "index_comentarios_on_registro_id"
  add_index "comentarios", ["usuario_projeto_id"], name: "index_comentarios_on_usuario_projeto_id"

  create_table "projetos", force: :cascade do |t|
    t.text     "descricao",   null: false
    t.string   "area",        null: false
    t.string   "status",      null: false
    t.datetime "data_inicio", null: false
    t.datetime "data_fim"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "registros", force: :cascade do |t|
    t.datetime "data_hora",          null: false
    t.text     "resumo",             null: false
    t.string   "prioridade",         null: false
    t.string   "severidade",         null: false
    t.boolean  "status",             null: false
    t.integer  "usuario_projeto_id", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "registros", ["usuario_projeto_id"], name: "index_registros_on_usuario_projeto_id"

  create_table "usuario_projetos", force: :cascade do |t|
    t.boolean  "status",     null: false
    t.integer  "usuario_id", null: false
    t.integer  "projeto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "usuario_projetos", ["projeto_id"], name: "index_usuario_projetos_on_projeto_id"
  add_index "usuario_projetos", ["usuario_id"], name: "index_usuario_projetos_on_usuario_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome",       null: false
    t.string   "email",      null: false
    t.string   "senha",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
