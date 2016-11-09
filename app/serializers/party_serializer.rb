class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :lists, :user

  def lists # like has_many, but just give me the ids
    object.lists.pluck(:id) # => [ 1, 2, 3, 4 ]
  end

  def user # like belongs_to, but just give me the id
    object.user_id # => 1
  end
end
