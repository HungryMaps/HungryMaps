class TipoComida < ActiveRecord::Base
  has_many :restaurantes
  validates_presence_of :tipo_comida, message: "Indique un tipo Ej: mexicana, tipica..."
end