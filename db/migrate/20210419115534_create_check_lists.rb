class CreateCheckLists < ActiveRecord::Migration[6.1]
  def change
    create_table :check_lists do |t|
      t.string :title
      t.integer :beggin_km
      t.integer :end_km
      t.references :user, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
