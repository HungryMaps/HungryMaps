class Restaurante < ActiveRecord::Base
  has_many :menus
  has_one :ubicacion
end
