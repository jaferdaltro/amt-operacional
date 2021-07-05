class CreateDisplacements < ActiveRecord::Migration[6.1]
  def change
    create_table :displacements do |t|
      t.references :car, foreign_key: true
      t.references :service, foreign_key: true
      t.integer :initial
      t.integer :final

      t.timestamps
    end
  end
end
