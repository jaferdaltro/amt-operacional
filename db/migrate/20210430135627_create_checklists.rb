class CreateChecklists < ActiveRecord::Migration[6.1]
  def change
    create_table :checklists do |t|
      t.references :item, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.string :beggin
      t.string :end

      t.timestamps
    end
  end
end
