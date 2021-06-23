class ClocksController < ApplicationController
  before_action :logged_in_user
  before_action :set_service
  attr_accessor :service
  attr_accessor :clock
 

  def show
    current_service = @service.current_service(current_user)
    @clock = current_user.clocks.last
    # @clock_in =current_service.clocks.where(user_id: current_user.id)
    console
    # byebug
  end
 
  def clock_in
    @clock = Clock.new(service_id: @service.id, user_id: current_user.id, active: true)
    if @clock.save
      flash[:success] = 'Ponto iniciado com sucesso'
      redirect_to root_path
    else
      reder :show
    end
    console
    # byebug
  end
    

  def clock_out
    service = @service.current_service(current_user)
    clock = service.clocks.last
    if service && clock.update(end_at: Time.now, active: false)
      flash[:success] = 'Ponto finalizado com sucesso'
      redirect_to root_path
    else
      render :show
    end
  end
  private

  
  def set_service
    @service = Service.set_service
  end

end