class CarsController < ApplicationController
  before_action :find_car, only: [:destroy, :update, :edit, :show]
  before_action :find_item, only: [:ready, :unready]

  def index
    @cars = Car.all
  end

  def show
    @car.mileage
  end
  
  

  def new
    @car = Car.new
    @car.items.build 
    
  end

  def create
    @car = Car.new(car)
    if @car.save
      flash[:notice] = "Viatura criada com sucesso"
      redirect_to cars_path
    else
      render 'new'
    end
  end

  def destroy
    @car.destroy
    flash[:notice] = "Viatura deletada com sucesso"
    redirect_to cars_path
  end

  def edit
  end
  

  def update
    if @car.update(car)
      flash[:success] = "Viatura atualizada com sucesso!"
      redirect_to cars_path
    else
      render 'edit'
    end
  end

  def list
    @cars = Car.all
  end

  def ready
    @car.items(params[:id]).update_attribute(:ready, true)
    redirect_to car_path
  end
  
  def unready
    @item.update_attribute(:ready, false)
    # @car.items(params[:id]).update_attribute(:ready, false)
    redirect_to car_path
  end
  
  
  private
    def car
      params.require(:car).permit(:owner, :licence_plate, :vtr, :brand, :model, :mileage,
      items_attributes: [:id, :description, :ready, :_destroy])
    end
    
    def find_car
      @car = Car.find(params[:id])
    end

    def find_item
      @item = @car.items(params[:id])
    end
    

 
    
  
  
end