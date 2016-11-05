class List < ActiveRecord::Base
  belongs_to :party
  has_many :item_instance, dependent: :destroy
end
