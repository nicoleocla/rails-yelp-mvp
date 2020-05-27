class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, acceptance: { accept: CATEGORIES }
end
