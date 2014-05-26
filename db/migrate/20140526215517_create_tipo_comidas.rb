class CreateTipoComidas < ActiveRecord::Migration
  def change
    create_table :tipo_comidas do |t|
      t.string :tipo_comida

      t.timestamps
    end
  end
end
