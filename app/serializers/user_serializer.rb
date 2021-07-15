class UserSerializer < ActiveModel::Serializer
  attributes :username, :orders, :items, :reviews
end
