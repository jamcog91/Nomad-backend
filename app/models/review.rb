class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :score, presence: true
end
