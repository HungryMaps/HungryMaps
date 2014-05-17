class CreateCantons < ActiveRecord::Migration
  def change
    create_table :cantons do |t|
      t.string :nombre_canton
      t.integer :provin_id
      t.integer :direccion_id

      t.timestamps
    end
  end
end
