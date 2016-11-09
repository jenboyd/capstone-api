class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :user, :items

  def items
    object.items.pluck(:id)
  end

  def party
    object.party_id
  end

  def user
    object.user_id
  end
end
