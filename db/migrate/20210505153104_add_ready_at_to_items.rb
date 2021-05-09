class AddReadyAtToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :ready_at, :datetime
  end
end
