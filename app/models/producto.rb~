class Producto < ActiveRecord::Base
  belongs_to :restaurante
  belongs_to :tipo_producto
  validates_presence_of :nombre_producto, message: "Indique un nombre para el producto"
  validates_presence_of :precio, message: "Indique un precio"
  validates :precio, numericality: true
  validates :tipo_producto, presence: true
  validates :restaurante, presence: true
end
