class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nombre_restaurante
      t.integer :telefono
      t.string :correo_electronico
      t.integer :fax
      t.integer :tipo_comida_id
      t.string :señas

      t.timestamps
    end
  end
end
