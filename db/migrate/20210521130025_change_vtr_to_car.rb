class ChangeVtrToCar < ActiveRecord::Migration[6.1]
  def change
    change_column :cars, :vtr, :string, limit: 7
  end
end
