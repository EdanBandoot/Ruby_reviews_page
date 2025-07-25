class Satisfaction < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :level, presence: true, uniqueness: true
end