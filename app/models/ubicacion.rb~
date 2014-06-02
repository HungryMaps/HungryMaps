class Ubicacion < ActiveRecord::Base
  belongs_to :restaurante
  validates :restaurante, presence: true
  Restaurante.joins('INNER JOIN ubicacions ON restaurantes_id = ubicacions.restaurantes_id')
  
def self.search(search)

 if search 

    where('provincia LIKE ?', "%#{search}%")


  end

end 

end
