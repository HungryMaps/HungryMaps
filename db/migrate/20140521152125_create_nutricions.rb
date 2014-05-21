class CreateNutricions < ActiveRecord::Migration
  def change
    create_table :nutricions do |t|
      t.string :menu_id
      t.float :energia
      t.float :grasas
      t.float :hidratos
      t.float :proteinas
      t.float :sal

      t.timestamps
    end
  end
end
