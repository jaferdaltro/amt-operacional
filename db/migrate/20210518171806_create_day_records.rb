class CreateDayRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :day_records do |t|
      t.date :reference_date
      t.text :observarions
      t.integer :work_day, limit: 2
      t.integer :missed_day, limit: 2
      t.integer :medical_certificate
      t.integer :user_id
      t.integer :calculated_hours

      t.timestamps
    end
  end
end
