class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.string :nombre_distrito
      t.integer :canton_id

      t.timestamps
    end
  end
end
