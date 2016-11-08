class List < ActiveRecord::Base
  belongs_to :party
  belongs_to :user
  has_many :items, dependent: :destroy
end
