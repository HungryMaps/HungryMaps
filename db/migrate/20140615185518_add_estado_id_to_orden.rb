class AddEstadoIdToOrden < ActiveRecord::Migration
  def change
    add_column :ordens, :estado_id, :integer
  end
end
