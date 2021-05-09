class Car < ApplicationRecord
  has_many :items, inverse_of: :car
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

  def item_attributes=(item_attributes)
    item_attributes.each do |attributes|
      items.build(attributes)
    end
  end

  
 
end
