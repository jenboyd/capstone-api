class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :lists

  def lists
    object.lists.pluck(:id)
  end
end
