class ItemInstance < ActiveRecord::Base
  belongs_to :list, inverse_of: :item_instances
  belongs_to :item, inverse_of: :item_instances
end
