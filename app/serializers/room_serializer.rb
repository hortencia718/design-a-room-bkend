class RoomSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name
  has_many :collections
end
