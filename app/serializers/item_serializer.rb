class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :list
  has_many :item_instance
end
