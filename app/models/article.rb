class Article < ApplicationRecord
  # LINKS
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories

  # VALIDATIONS
  validates :date, presence: true
  validates :short_description, presence: true, length: { minimum: 10, maximum: 100}
  validates :description, presence: true, length: { minimum: 200}
  validates :title, presence: true, length: { minimum: 10, maximum: 60 }
end
