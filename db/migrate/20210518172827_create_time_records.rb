class CreateTimeRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :time_records do |t|
      t.datetime :time
      t.integer :day_records_id

      t.timestamps
    end
  end
end
