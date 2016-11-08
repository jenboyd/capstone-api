class Item < ActiveRecord::Base
  has_many :item_instances, dependent: :destroy
  has_many :item_details, dependent: :destroy
  has_many :lists, through: :item_instances

end
