class CheckList < ApplicationRecord
  has_many :check_list_items
  belongs_to :user
  belongs_to :vehicle



  def percent_complete
    return 0 if total_items == 0
    (100 * check_items_beggin.to_f / total_items).round(1)
  end
  

  def check_items_beggin
    @beggin_check_items ||= check_list_items.beggin_check.count
  end
 
  def check_items_end
    @end_check_items ||= check_list_items.end_check.count
  end
  
  def total_items
    @total_items ||=  check_list_items.count
  end
end
