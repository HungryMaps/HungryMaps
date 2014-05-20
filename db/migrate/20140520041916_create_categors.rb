class CreateCategors < ActiveRecord::Migration
  def change
    create_table :categors do |t|
      t.string :nombre_categoria

      t.timestamps
    end
  end
end
