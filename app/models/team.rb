class Team < ApplicationRecord
  has_many :users

  def people
    self.users
  end
end
