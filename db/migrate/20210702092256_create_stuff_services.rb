class CreateStuffServices < ActiveRecord::Migration[6.1]
  def change
    create_table :stuff_services do |t|
      t.references :stuff, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
