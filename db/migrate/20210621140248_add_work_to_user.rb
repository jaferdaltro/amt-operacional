class AddWorkToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :work, :boolean, default: false
  end
end
