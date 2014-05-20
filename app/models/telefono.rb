class Telefono < ActiveRecord::Base
belongs_to :restaurante
  validates_presence_of :restaurante_id, message: "Indique un id"
  validates :restaurante, presence: true
  validates :telefono, numericality: true
  validates_presence_of :telefono, message: "Indique un telefono"
  
end
