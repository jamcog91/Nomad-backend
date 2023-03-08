class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :score, :likes, :comments

has_one :user
has_one :restaurant
end
