class CarsController < ApplicationController
  before_action :find_car, only: [:destroy, :update, :edit, :show]
  
  def index
    @cars = Car.all
  end

  def show
  end
  
  

  def new
    @car = Car.new
    @car.items.build 
    
  end

  def create
    @car = Car.new(car_params)
    if @car.save
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
    if @car.update(car_params)
      redirect_to cars_path
    else
      render 'edit'
    end
  end

  def list
    @cars = Car.all
  end


  
  
  private
    def car_params
      params.require(:car).permit(:owner, :licence_plate, :vtr, :brand, :model, :mileage,
          items_attributes: [:id, :description, :car_id, :ready, :_destroy])
    end
    
    def find_car
      @car = Car.find(params[:id])
    end

    def find_item
      @item = @car.items(params[:id])
    end
    

 
    
  
  
end