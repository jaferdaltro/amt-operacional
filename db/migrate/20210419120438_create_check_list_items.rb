class CreateCheckListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :check_list_items do |t|
      t.string :description
      t.boolean :beggin_check
      t.boolean :end_check
      t.references :check_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
