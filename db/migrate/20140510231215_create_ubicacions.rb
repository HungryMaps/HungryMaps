class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.integer :provincia_id
      t.integer :canton_id
      t.integer :distrito_id
      t.string :señas

      t.timestamps
    end
  end
end
