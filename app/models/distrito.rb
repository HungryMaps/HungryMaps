class Distrito < ActiveRecord::Base
	belongs_to :canton
	belongs_to :direccion
	validates_presence_of :direccion_id, :canton_id, message: "Indique un id"
	validates_presence_of :nombre_distrito, message: "Indique un nombre"
  	validates :canton, :direccion, presence: true
end
