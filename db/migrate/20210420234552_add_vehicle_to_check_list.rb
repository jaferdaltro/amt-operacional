class AddVehicleToCheckList < ActiveRecord::Migration[6.1]
  def change
    add_reference :check_lists, :vehicle, null: false, foreign_key: true
  end
end
