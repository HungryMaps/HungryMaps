class Tipocomida < ActiveRecord::Base
  belongs_to :restaurante
  validates_presence_of :restaurante_id, message: "Indique un id"
  validates :restaurante, presence: true
  validates_presence_of :tipocomida, message: "Indique el tipo de comida"
end
