class Restaurante < ActiveRecord::Base
  has_many :menus
  has_many :direccions
  has_many :telefonos
  has_many :tipocomidas
end
