class Review < ApplicationRecord
  belongs_to :car
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  has_many :cars, dependent: :destroy
end
