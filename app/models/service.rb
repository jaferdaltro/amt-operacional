class Service < ApplicationRecord
  has_many :jobs
  has_many :cars
  has_many :users
end
