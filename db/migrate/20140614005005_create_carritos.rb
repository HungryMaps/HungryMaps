class CreateCarritos < ActiveRecord::Migration
  def change
    create_table :carritos do |t|
      t.string :producto
      t.integer :cantidad

      t.timestamps
    end
  end
end
