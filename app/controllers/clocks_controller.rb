class ClocksController < ApplicationController
  before_action :logged_in_user
  before_action :find_clock, only: [:switch_clock, :finish_clock]
  before_action :set_service, only: [:switch_clock, :start_clock]

  def switch_clock
    if current_user.clocks.last.active? || !@clock.nil?
      render :finish_clock
    else
      render :start_clock
    end
  end



 
  def start_clock
    @clock = Clock.new(
    user_id:current_user.id,
    service_id: @service.id,
    active: true,
    start_at: Time.zone.now)
    if @clock.save
      current_user.update_attribute(:work, true)
      flash[:success] = 'Ponto iniciado com sucesso!'
      redirect_to root_path
    else
      redirect_to root_path
      flash[:danger] = 'Ocorreu um erro'
    end
  end

  def finish_clock
    
    @clock ||= current_user.clocks.last
    if @clock.active?  
      @clock.update(active: false,  end_at: Time.zone.now)
      current_user.update_attribute(:work, false)
      flash[:success] = 'Ponto finalizado com sucesso!'
      redirect_to root_path
    else
      redirect_to root_path
      flash[:danger] = 'Não foi possível finalizar o seu ponto!!'
    end
  end


  

  private 
    def find_clock
      @clock = current_user.clocks.last
    end

    def set_service
      @service = Service.set_service
    end
    


end