class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_many :item_instances
end
