class Ubicacion < ActiveRecord::Base
  has_many :provincia
  has_many :canton
  has_many :distrito
  belongs_to :restaurante
end
