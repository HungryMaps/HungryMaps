class TipoProducto < ActiveRecord::Base
   has_many :productos
   validates_presence_of :tipo_producto, message: "Indique un tipo Ej: Bebidas, Postres, Almuerzos..."
end
