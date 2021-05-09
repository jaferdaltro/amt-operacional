class AddReferenceCarToChecklist < ActiveRecord::Migration[6.1]
  def change
    add_reference :checklists, :car,  foreign_key: true
  end
end
