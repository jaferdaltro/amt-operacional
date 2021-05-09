class AddMileageToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :mileage, :integer, default: 0
   
  end
end
