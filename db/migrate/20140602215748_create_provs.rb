class CreateProvs < ActiveRecord::Migration
  def change
    create_table :provs do |t|
      t.string :nombre_provincia

      t.timestamps
    end
  end
end
