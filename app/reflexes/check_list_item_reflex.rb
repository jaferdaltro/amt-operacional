# frozen_string_literal: true

class CheckListItemReflex < ApplicationReflex
  def mark_bad
    item = CheckListItem.find(element.dataset.id)
    item.update(beggin_check: false)
  end

  def mark_good
    item = CheckListItem.find(element.dataset.id)
    item.update(beggin_check: true)
  end
  

end
