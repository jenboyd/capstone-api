class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :items, :user

  def items # like has_many, but just give me the ids
    object.items.pluck(:id) # => [ 1, 2, 3, 4 ]
  end

  def party # like belongs_to, but just give me the id
    object.party_id # => 1
  end

  def user # like belongs_to, but just give me the id
    object.user_id # => 1
  end
end
