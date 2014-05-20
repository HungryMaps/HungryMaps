class AddCategorIdToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :categor_id, :integer
  end
end
