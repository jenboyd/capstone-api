class ListSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :item_instance
end
