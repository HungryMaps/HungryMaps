class CreateProvins < ActiveRecord::Migration
  def change
    create_table :provins do |t|
      t.string :nombre_provincia
      t.integer :direccion_id

      t.timestamps
    end
  end
end
