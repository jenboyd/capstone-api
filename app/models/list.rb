class List < ActiveRecord::Base
  belongs_to :party
  has_many :items, dependent: :destroy
end
