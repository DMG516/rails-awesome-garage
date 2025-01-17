class Car < ApplicationRecord
  belongs_to :owner

  has_many :favourites
  has_many :reviews

  validates :brand, :model, :year, :fuel, presence: true
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2025 }
end
