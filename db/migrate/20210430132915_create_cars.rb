class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :owner, limit: 35
      t.string :licence_plate, limit: 8
      t.string :vtr, limit: 4
      t.string :brand, limit: 35
      t.string :model, limit: 35

      t.timestamps
    end
  end
end
