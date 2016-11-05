class ItemDetail < ActiveRecord::Base
  belongs_to :item
  has_many :details, dependent: :destroy
end
