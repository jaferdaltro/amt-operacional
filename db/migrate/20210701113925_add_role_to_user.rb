class AddRoleToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :role, foreign_key: true
    remove_column :users, :agent, foreign_key: true
    remove_column :users, :supervisor, foreign_key: true
  end
end
