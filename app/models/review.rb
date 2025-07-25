class Review < ApplicationRecord
  belongs_to :product
  belongs_to :satisfaction
  belongs_to :importance

  validates :comments, length: { maximum: 500 }
  validates :product_id, :satisfaction_id, :importance_id, presence: true
end