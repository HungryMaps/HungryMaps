class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.integer :restaurante_id
      t.string :telefono

      t.timestamps
    end
  end
end
