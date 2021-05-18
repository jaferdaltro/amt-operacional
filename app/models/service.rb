class Service < ApplicationRecord
  has_many :jobs
  has_many :cars
  has_many :users
  attr_accessor :team


  def insert_team(user)
    team.add(user)
  end
  
end
