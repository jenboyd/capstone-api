class DetailSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :item_detail
end
