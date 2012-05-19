class Cliente < ActiveRecord::Base
  
  def inativar    
    self.ativo = false
    return self.save
  end    
  
  def ativar
    self.ativo = true
    return self.save
  end
  
  def buscar
  end
  
end
