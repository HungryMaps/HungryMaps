class Restaurante < ActiveRecord::Base
  has_many :productos
  belongs_to :tipo_comida
  has_one :ubicacion
  validates_presence_of :nombre_restaurante, message: "Indique un nombre"
  validates_presence_of :telefono, message: "Indique un telefono para el restaurante"
  validates_presence_of :correo_electronico, message: "Indique un email para el restaurante"
  validates :tipo_comida, presence: true

  def self.search(search)

 if search 

    where('nombre_restaurante LIKE ?', "%#{search}%")    

  end

end
end
