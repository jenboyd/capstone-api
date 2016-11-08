class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :parties

  def parties
    object.parties.pluck(:id)
  end
end
