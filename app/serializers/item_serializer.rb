class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :list, :user

  def list # like belongs_to, but just give me the id
    object.list_id # => 1
  end

  def user # like belongs_to, but just give me the id
    object.user_id # => 1
  end
end
