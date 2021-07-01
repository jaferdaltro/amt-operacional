class ClocksController < ApplicationController
  before_action :logged_in_user
  before_action :set_service
  before_action :current_clock, only: [:switch, :clock_out]

  def switch
      @clock ||= Clock.new
      @user_clock = current_user.clocks
  end
 
  def clock_in
    @clock = @service.clocks.build(user_id: current_user.id, active: true)
    if @clock.save
      flash[:success] = 'Ponto iniciado com sucesso'
      redirect_to root_path
    else
      reder :switch
    end
 
  end
    

  def clock_out
    
    if @clock.update(end_at: Time.now, active: false)
      flash[:success] = 'Ponto finalizado com sucesso'
      redirect_to root_path
    else
      render :switch
    end
  end


  private

  def current_clock
    @clock = current_user.clocks.last 
  end

  
  def set_service
    @service = Service.set_service
  end



end