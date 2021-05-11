class ItemsController < ApplicationController
  before_action :find_car, only: [:edit, :ready, :unready]
  before_action :find_item, only: [:edit, :ready, :unready]

  def show
  end
  
  def edit
  end

  def create
    @car = Car.find(params[:car_id])
    @item = @car.items.create(item_params)
    redirect_to car_path(@car)
  end

  def update
    if @item.update(item_params)
      redirect_to car_path(@car)  
      flash[:success] = 'item atualizado'
    else
      render 'edit'
    end
  end
  
    # DELETE /albums/1 or /albums/1.json
  def destroy
    @item.destroy
    redirect_to @car
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

    def item_params
      params.require(:item).permit(:description, {car: [:car_id, :vtr, :licence_plate, :brand, :model]})
    end
    
  
  
end