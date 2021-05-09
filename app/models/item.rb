class Item < ApplicationRecord
  belongs_to :car


  def ready?
    !ready_at.blank?
  end
  
end
