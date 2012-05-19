class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :telefone
      t.text :endereco
      t.string :cep
      t.timestamp :dt_nascto
      t.char :sexo
      t.string :foto
      t.string :email
      t.string :senha

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
