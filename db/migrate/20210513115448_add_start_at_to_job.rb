class AddStartAtToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :start_at, :datetime
    add_column :jobs, :end_at, :datetime
  end
end
