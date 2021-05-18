class Frequency < ApplicationRecord
  belongs_to :user

  def self.check_in
   update_attribute(:login_time, Time.zone.now)
  end

  def self.check_out
    update_attribute(:logout_time, Time.zone.now)
  end
  
  
end
