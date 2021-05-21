class Car < ApplicationRecord

  has_many :items, inverse_of: :car
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

  status = {
    ready: 0,
    unready: 1,
  }

  fuel = {
    flex: 0,
    ethanol: 1,
    diesel: 2,
    gasoline: 3,

  }

  operation = {
    operation: 0,
    administrative: 1,
  }

  kind = {
    sedan: 0,
    hatch: 1,
    traction: 2,
    truck: 3,
    pickup_truck: 4,
    motocicle: 5,
  }

  def item_attributes=(item_attributes)
    item_attributes.each do |attributes|
      items.build(attributes)
    end
  end

  
 
end
