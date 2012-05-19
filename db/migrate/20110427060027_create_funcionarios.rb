class CreateFuncionarios < ActiveRecord::Migration
  def self.up
    create_table :funcionarios do |t|
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
      t.string :usuario
      t.string :senha
      t.integer :nivel

      t.timestamps
    end
  end

  def self.down
    drop_table :funcionarios
  end
end
