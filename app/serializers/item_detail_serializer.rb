class ItemDetailSerializer < ActiveModel::Serializer
  attributes :id
  has_one :item
  has_many :details
end
