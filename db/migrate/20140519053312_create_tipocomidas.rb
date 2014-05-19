class CreateTipocomidas < ActiveRecord::Migration
  def change
    create_table :tipocomidas do |t|
      t.string :restaurante_id
      t.string :tipocomida

      t.timestamps
    end
  end
end
