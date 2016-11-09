class Party < ActiveRecord::Base
  belongs_to :user
  has_many :lists, dependent: :destroy

  validates :name, presence: true
  validates :user, presence: true
end
