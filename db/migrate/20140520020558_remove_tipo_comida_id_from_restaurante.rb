class RemoveTipoComidaIdFromRestaurante < ActiveRecord::Migration
  def change
    remove_column :restaurantes, :tipo_comida_id, :integer
  end
end
