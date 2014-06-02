class Ubicacion < ActiveRecord::Base
  has_many :restaurantes
  Restaurante.joins('INNER JOIN ubicacions ON restaurantes_id = ubicacions.restaurantes_id')
  
def self.search(search)

 if search 

    where('provincia LIKE ?', "%#{search}%")


  end

end 

end
