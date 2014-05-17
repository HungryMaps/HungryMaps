class Direccion < ActiveRecord::Base
	has_one :provin
	has_one :canton
	has_one :distrito
   	belongs_to :restaurante
end
