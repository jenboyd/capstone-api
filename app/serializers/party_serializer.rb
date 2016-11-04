class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location
  has_many :lists
end
