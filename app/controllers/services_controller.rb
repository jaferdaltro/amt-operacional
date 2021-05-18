class ServicesController < ApplicationController
  before_action :logged_in_user
  def index
    @services = Service.all
  end

  def new
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
    
  
  
  
end