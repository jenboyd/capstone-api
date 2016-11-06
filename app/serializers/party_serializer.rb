class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :lists
  # has_many :lists

  def lists
    object.lists.pluck(:id)
  end
end
