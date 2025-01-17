class Owner < ApplicationRecord

  validates :nickname, presence: true
  has_many :cars, dependent: :destroy

end
