class Review < ApplicationRecord
  belongs_to :product
  belongs_to :satisfaction
  belongs_to :importance
end
