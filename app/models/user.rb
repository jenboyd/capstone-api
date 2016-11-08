class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :parties
  has_many :lists


end
