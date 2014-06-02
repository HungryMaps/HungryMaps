class RemoveRestauranteIdFromUbicacion < ActiveRecord::Migration
  def change
    remove_column :ubicacions, :restaurante_id, :integer
  end
end
