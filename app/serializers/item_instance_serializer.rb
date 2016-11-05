class ItemInstanceSerializer < ActiveModel::Serializer
  attributes :id, :item
  has_one :list
  has_one :item
end
