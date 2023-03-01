class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :image, :style
end
