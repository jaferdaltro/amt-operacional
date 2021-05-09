class ItemsController < ApplicationController
  before_action :find_car, only: [:index, :ready, :unready]
  before_action :find_item, only: [:index, :ready, :unready]

  def index
    
  end
  
  
  def ready
    @item.update_attribute(:ready, true)
    redirect_to car_path(@car)
  end
  
  def unready
    @item.update_attribute(:ready, false)
    # @car.items(params[:id]).update_attribute(:ready, false)
    redirect_to car_path(@car)
  end

 

  private  
    def find_car
      @car = Car.find(params[:car_id])
    end

    def find_item
      @item = @car.items.find(params[:id])
    end
  
  
end