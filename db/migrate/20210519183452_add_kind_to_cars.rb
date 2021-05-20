class AddKindToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :kind, :integer, default: 0
    add_column :cars, :fuel, :integer, default: 0
  end
end
