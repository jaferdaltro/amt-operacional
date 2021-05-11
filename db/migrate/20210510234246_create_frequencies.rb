class CreateFrequencies < ActiveRecord::Migration[6.1]
  def change
    create_table :frequencies do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :login_time
      t.datetime :logout_time

      t.timestamps
    end
  end
end
