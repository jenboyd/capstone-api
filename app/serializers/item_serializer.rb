class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :list

  def list
    object.list_id
  end

end
