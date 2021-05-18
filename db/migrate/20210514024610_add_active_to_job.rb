class AddActiveToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :active, :boolean, default: false
  end
end
