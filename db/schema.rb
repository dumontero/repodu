# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110503004641) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "telefone"
    t.text     "endereco"
    t.string   "cep"
    t.datetime "dt_nascto"
    t.string   "foto"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sexo",       :limit => 1
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "telefone"
    t.text     "endereco"
    t.string   "cep"
    t.datetime "dt_nascto"
    t.string   "foto"
    t.string   "email"
    t.string   "usuario"
    t.string   "senha"
    t.integer  "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sexo",       :limit => 1
  end

  create_table "perfils", :force => true do |t|
    t.string   "descricao_perfil"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
