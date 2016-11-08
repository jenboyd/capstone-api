class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :user

  def party
    object.party_id
  end

  def user
    object.user_id
  end
end
