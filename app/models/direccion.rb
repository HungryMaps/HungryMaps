class Direccion < ActiveRecord::Base
	has_one :provin
	has_one :canton
	has_one :distrito
   	belongs_to :restaurante
	validates_presence_of :restaurante_id, message: "Indique un id"
  	validates :restaurante, presence: true
end
