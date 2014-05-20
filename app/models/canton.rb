class Canton < ActiveRecord::Base
	belongs_to :provin
	belongs_to :direccion
	has_many :distritos
	validates_presence_of :direccion_id, :provin_id, message: "Indique un id"
  	validates :provin, :direccion, presence: true
	validates_presence_of :nombre_canton, message: "Indique un nombre"
end
