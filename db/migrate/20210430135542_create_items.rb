class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :ready

      t.timestamps
    end
  end
end
