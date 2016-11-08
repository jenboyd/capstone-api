class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :parties, :lists

  def parties
    object.parties.pluck(:id)
  end

  def lists
    object.lists.pluck(:id)
  end

end
