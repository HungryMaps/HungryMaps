class TipoComida < ActiveRecord::Base
  has_many :restaurantes
  #validates_presence_of :tipo_comida, message: "Indique un tipo Ej: mexicana, tipica..."

  Restaurante.joins('INNER JOIN tipo_comidas ON restaurantes_id = tipo_comidas.restaurantes_id')
  def self.search(search)
   if(TipoComida.exists?(['tipo_comida LIKE ?', "%#{search}%"]))  #1
   	where('tipo_comida LIKE ?', "%#{search}%" )
   end #1
  end
end
