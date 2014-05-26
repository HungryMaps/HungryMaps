class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre_producto
      t.integer :precio
      t.string :descripcion
      t.integer :tipo_producto_id
      t.integer :restaurante_id

      t.timestamps
    end
  end
end
