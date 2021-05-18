class Job < ApplicationRecord
  belongs_to :service, optional: true
  belongs_to :user


  def self.set_service
    last_service =  Service.last.nil? ? Service.create : Service.last
    date_last_service = Date.parse(last_service.created_at.to_s)
    if date_last_service == Date.today
      return last_service
    else
      Service.create
    end
  end

  def active
    active = true
    service_id = Service.last.nil? ? Service.create : Service.last
  end
  

  def inactive
    active = false
    service_id = nil
  end



end
