class Restaurante < ActiveRecord::Base
  has_many :ordens
  has_many :productos
  belongs_to :tipo_comida
  belongs_to :ubicacion
  belongs_to :user
  has_many :opinions
  has_many :votes, dependent: :destroy
  validates_presence_of :nombre_restaurante, message: "Indique un nombre"
  validates_presence_of :telefono, message: "Indique un telefono para el restaurante"
  validates_presence_of :correo_electronico, message: "Indique un email para el restaurante"
  validates :tipo_comida, presence: true
  validates :ubicacion, presence: true

  
def self.search(search)

 if search 

    where('nombre_restaurante LIKE ?', "%#{search}%")    

  end

end
end
