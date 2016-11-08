class List < ActiveRecord::Base
  belongs_to :party
  has_many :item_instances, dependent: :destroy
  has_many :items, through: :item_instances
end
