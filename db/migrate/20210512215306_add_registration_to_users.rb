class AddRegistrationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :registration, :string
    add_column :users, :score, :integer, default: 0
    add_column :users, :agent, :boolean, default: false
    add_column :users, :supervisor, :boolean, default: false
  end
end
