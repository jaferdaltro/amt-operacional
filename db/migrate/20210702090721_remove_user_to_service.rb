class RemoveUserToService < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :user_id
  end
end
