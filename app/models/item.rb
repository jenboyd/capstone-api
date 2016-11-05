class Item < ActiveRecord::Base
  has_many :item_instance, dependent: :destroy
end
