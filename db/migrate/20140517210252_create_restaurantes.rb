class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nombre_restaurante
      t.integer :tipo_comida_id

      t.timestamps
    end
  end
end
