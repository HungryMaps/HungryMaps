class Restaurante < ActiveRecord::Base
  has_many :menus
  has_many :direccions
  has_many :telefonos
  has_many :tipocomidas
  validates_presence_of :nombre_restaurante, message: "Indique un nombre"

def self.search(search)

 if search 

    where('nombre_restaurante LIKE ?', "%#{search}%")    

  end

end

end
