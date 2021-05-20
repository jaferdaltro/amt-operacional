class ClocksController < ApplicationController
  before_action :logged_in_user
  before_action :find_clock, only: [:switch_clock, :finish_clock]
  before_action :service, only: [:switch_clock, :start_clock]
  
  def switch_clock
    if @clock.nil?
    render :start_clock
    else
      render :finish_clock
    end
  end



  def start_clock
    
    @clock = Clock.new(
    user_id:current_user.id,
    service_id: @service.id,
    active: true,
    start_at: Time.zone.now)
    if @clock.save
      flash[:success] = 'Ponto iniciado com sucesso!'
      redirect_to user_path(current_user)
    else
      flash[:danger] = 'Ocorreu um erro'
    end
  end

  def finish_clock
    if @clock.active  
      @clock.update(active: false,  end_at: Time.zone.now)
      flash[:success] = 'Ponto finalizado com sucesso!'
      redirect_to user_path(current_user.id)
    else
      flash[:danger] = 'problema'
    end
  end


  

  private 
    def find_clock
      @clock = current_user.clocks.find_by(service_id: Service.last)
    end

    def service
      @service = Clock.set_service
    end

    

end