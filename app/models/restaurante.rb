class Restaurante < ActiveRecord::Base
  has_many :menus
  has_many :direccions
  belongs_to :tipo_comida

end
