class AddBusyToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :busy, :boolean, default: :false
  end
end
