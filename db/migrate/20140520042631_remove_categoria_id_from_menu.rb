class RemoveCategoriaIdFromMenu < ActiveRecord::Migration
  def change
    remove_column :menus, :categoria_id, :integer
  end
end
