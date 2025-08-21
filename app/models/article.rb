class Article < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
