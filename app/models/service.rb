class Service < ApplicationRecord
  has_many :clocks
  has_many :cars
  has_many :users, through: :clocks
  attr_accessor :team

  #Returns the last service or create a new one
  def self.set_service
    today = Date.today
    last_service = Service.last
    last_service ||= Service.create(user_id: current_user) 
    date_last_service = Date.parse(last_service.created_at.to_s)
    if date_last_service == today
      return last_service
    else
      Service.create(user_id: current_user)
    end
  end

  
end
