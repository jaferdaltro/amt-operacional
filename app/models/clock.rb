class Clock < ApplicationRecord
  belongs_to :service
  belongs_to :user


  def start_clock
    service = Service.set_service
    @clock = Clock.new(
    user_id:current_user.id,
    service_id: service.id,
    active: true,
    start_at: Time.zone.now)
    if @clock.save
      flash[:success] = 'Ponto iniciado com sucesso!'
      redirect_to user_path(current_user)
    else
      redirect_to root_path
      flash[:danger] = 'Ocorreu um erro'
    end
  end

  def finish_clock
    if @clock.active  
      @clock.update(active: false,  end_at: Time.zone.now)
      flash[:success] = 'Ponto finalizado com sucesso!'
      redirect_to root_path
    else
      redirect_to root_path
      flash[:danger] = 'Não foi possível finalizar o seu ponto!!'
    end
  end




end
