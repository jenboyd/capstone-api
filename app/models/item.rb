class Item < ActiveRecord::Base
  belongs_to :list
  belongs_to :user

  validates :list, presence: true
  validates :user, presence: true
end
