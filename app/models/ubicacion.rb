class Ubicacion < ActiveRecord::Base
  belongs_to :restaurante
  validates :restaurante, presence: true
end