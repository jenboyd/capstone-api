class ItemInstance < ActiveRecord::Base
  belongs_to :list
  belongs_to :item
end
