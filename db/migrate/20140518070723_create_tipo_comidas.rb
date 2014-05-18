class CreateTipoComidas < ActiveRecord::Migration
  def change
    create_table :tipo_comidas do |t|
      t.string :tipoComida

      t.timestamps
    end
  end
end
