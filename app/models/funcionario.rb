class Funcionario < ActiveRecord::Base #Pessoa
  
  #set_table_name "funcionarios"
  #set_primary_key "id"
  #set_sequence_name "funcionarios_id_seq"
  
  #has_one :perfil, :class_name => "Perfil", :foreign_key => "nivel"
  
  #def initialize
  #  super
  #end
  
end
