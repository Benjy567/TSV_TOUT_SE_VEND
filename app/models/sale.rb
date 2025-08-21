class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :date, presence: true
end
