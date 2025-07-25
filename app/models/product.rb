class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :price, numericality: { greater_than: 0 }
  validates :category, presence: true
end
