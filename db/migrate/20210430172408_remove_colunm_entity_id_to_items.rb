class RemoveColunmEntityIdToItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :entity_id
  end
end
