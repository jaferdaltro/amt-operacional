class RenameJobToClock < ActiveRecord::Migration[6.1]
  def change
    rename_table :jobs, :clocks
  end
end
