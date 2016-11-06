class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :party
  has_many :item_instance
  def party
    object.party.id
  end
end
