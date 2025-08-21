class Review < ApplicationRecord
  belongs_to :article

  validates :comment, presence: true, length: { minimum: 5 }
  validates :rating, presence: true, inclusion: { in: 1..5 }
end
