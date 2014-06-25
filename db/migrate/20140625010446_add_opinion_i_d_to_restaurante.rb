class AddOpinionIDToRestaurante < ActiveRecord::Migration
  def change
    add_column :restaurantes, :opinion_id, :integer
  end
end
