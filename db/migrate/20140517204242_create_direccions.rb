class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.integer :restaurante_id
      t.string :señas

      t.timestamps
    end
  end
end
