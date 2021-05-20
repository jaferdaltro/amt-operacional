class AddOperationToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :operation, :integer, default: 0
  end
end
