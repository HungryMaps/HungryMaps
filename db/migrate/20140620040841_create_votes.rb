class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :restaurante_id

      t.timestamps
    end
  end
end
