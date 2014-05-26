class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.string :provincia
      t.string :canton
      t.string :distrito
      t.integer :restaurante_id

      t.timestamps
    end
  end
end
