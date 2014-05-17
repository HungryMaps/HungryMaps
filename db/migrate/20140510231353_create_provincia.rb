class CreateProvincia < ActiveRecord::Migration
  def change
    create_table :provincia do |t|
      t.string :nombre_provincia

      t.timestamps
    end
  end
end
