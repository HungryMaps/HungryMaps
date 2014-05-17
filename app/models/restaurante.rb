class Restaurante < ActiveRecord::Base
  has_many :menus
  has_many :direccions
end
