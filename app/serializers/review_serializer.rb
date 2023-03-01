class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :score, :likes, :comments

has_many :user
has_many :restaurant
end
