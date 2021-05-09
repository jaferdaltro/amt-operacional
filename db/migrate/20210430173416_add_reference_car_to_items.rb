class AddReferenceCarToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :car, foreign_key: true
  end
end
