class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :reviews
end
