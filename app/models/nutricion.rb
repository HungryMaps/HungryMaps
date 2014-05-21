class Nutricion < ActiveRecord::Base
  belongs_to :menu
  validates_presence_of :menu_id, message: "Indique un id"
  validates :menu, presence: true
  validates_presence_of :energia, message: "Indique porcentaje de Energia"
  validates :energia, numericality: true
  validates_presence_of :grasas, message: "Indique porcentaje de Grasas"
  validates :grasas, numericality: true
  validates_presence_of :hidratos, message: "Indique porcentaje de Hidratos de Carbono"
  validates :hidratos, numericality: true
  validates_presence_of :proteinas, message: "Indique porcentaje de Proteinas"
  validates :proteinas, numericality: true
  validates_presence_of :sal, message: "Indique porcentaje de Sal"
  validates :sal, numericality: true
end
