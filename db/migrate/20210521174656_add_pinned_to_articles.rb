class AddPinnedToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :pinned, :boolean
  end
end
