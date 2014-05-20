class Categor < ActiveRecord::Base
	has_many :menus
	validates_presence_of :nombre_categoria, message: "Indique un nombre"
end
