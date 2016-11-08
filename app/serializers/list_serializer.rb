class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :party

  def party
    object.party_id
  end
end
