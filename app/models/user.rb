class User < ActiveRecord::Base
  include Authentication
  has_many :parties
  has_many :lists
  has_many :items
end
