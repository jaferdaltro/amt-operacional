class AddObservationToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :obeservation, :text, limit: 50
  end
end
