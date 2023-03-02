class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :image, :style

  has_many :reviews
end
