class DropChecklists < ActiveRecord::Migration[6.1]
  def change
    drop_table :checklists
  end
end
