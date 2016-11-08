class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :lists, :user
  belongs_to :user

  def lists
    object.lists.pluck(:id)
  end

  def user
    object.user_id
  end
end
