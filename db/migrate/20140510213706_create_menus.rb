class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :restaurante_id
      t.string :nombre_platillo
      t.float :precio
      t.integer :categoria_id

      t.timestamps
    end
  end
end
