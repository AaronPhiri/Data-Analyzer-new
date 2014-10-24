class Indicator < ActiveRecord::Base
  has_one :users
  has_many :results
end
