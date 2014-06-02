class AddUbicacionIdToRestaurante < ActiveRecord::Migration
  def change
    add_column :restaurantes, :ubicacion_id, :integer
  end
end
