class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.integer :restaurante_id
      t.string :comentario
      t.integer :user_id

      t.timestamps
    end
  end
end
