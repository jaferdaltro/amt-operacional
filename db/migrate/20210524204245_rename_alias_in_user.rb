class RenameAliasInUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :alias, :username
  end
end
