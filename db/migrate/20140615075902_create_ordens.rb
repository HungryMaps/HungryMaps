class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.integer :user_id
      t.integer :restaurante_id
      t.string :productos
      t.float :precio
      t.string :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
