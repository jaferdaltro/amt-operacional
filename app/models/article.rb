class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { minimum: 4, maximum: 100 }
end
