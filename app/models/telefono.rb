class Telefono < ActiveRecord::Base
belongs_to :restaurante
  validates_presence_of :restaurante_id, message: "Indique un id"
  validates :restaurante, presence: true
end
