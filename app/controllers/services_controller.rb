class ServicesController < ApplicationController
  before_action :logged_in_user
  before_action :set_service, only: [:show]
  before_action :set_clock, only: [:show]
  def index
    @services = Service.all
  end

  def new
  end

  def show
    
  end
  
  

  def create
    @service = Service.new(user_id: current_user.id)
    if @service.save
      flash[:success] = 'Serviço criado com sucesso!'
      redirect_to user_path(current_user)
    end
  end

  private 
    def service_params
      parmas.require(:service).permit(:user_id)
    end

    def set_service
      @service = Service.find_by(id: params[:id])
    end

    def set_clock
      @clocks = @service.clocks
    end
    
    
    
  
  
  
end