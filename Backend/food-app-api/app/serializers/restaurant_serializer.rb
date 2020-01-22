class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :place_id
  has_one :user
end
