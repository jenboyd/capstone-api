class List < ActiveRecord::Base
  belongs_to :party
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :name,  presence: true
  validates :party, presence: true
  validates :user, presence: true
end
