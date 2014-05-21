class Menu < ActiveRecord::Base
  has_many :nutricions
  belongs_to :restaurante
  belongs_to :categor
  validates_presence_of :restaurante_id, message: "Indique un id"
  validates :restaurante, presence: true
  validates_presence_of :nombre_platillo, message: "Indique un nombre"
  validates_presence_of :precio, message: "Indique un precio"
  validates :precio, numericality: true
end
