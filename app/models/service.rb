class Service < ApplicationRecord
  has_many :clocks
  has_many :displacements
  has_many :stuff_services
  has_many :cars, through: :displacements
  has_many :users, through: :clocks
  has_many :stuffs, through: :stuff_services

  attr_accessor :team

  def current_service(user)
    clock = user.clocks.last
    clock.service unless clock.nil?
  end

  #Returns the last service or create a new one
  def self.set_service
    today = Date.today
    last_service = Service.last
    last_service ||= Service.create
    date_last_service = Date.parse(last_service.created_at.to_s)
    if date_last_service == today
      return last_service
    else
      Service.create
    end
  end

  
end
