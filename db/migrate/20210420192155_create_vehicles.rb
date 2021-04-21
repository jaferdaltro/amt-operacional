class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :vtr_number
      t.string :kind
      t.boolean :active
      t.string :licence_plate
      t.string :brand
      t.string :model
      t.string :owner

      t.timestamps
    end
  end
end
