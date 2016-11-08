class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :item_instances

  def item_instances
    object.item_instances.pluck(:id)
  end

  def party
    object.party_id
  end
end
