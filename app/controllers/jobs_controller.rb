class JobsController < ApplicationController
  before_action :find_job, only: [:point, :finish_job]
  
  def point
    if @job.nil?
      render 'start_job'
    else
      render 'finish_job'
    end
  end



  def start_job
    service = Job.set_service
    @job = Job.new(service: Job.set_service,
    user_id:current_user.id,
    service_id: service.id,
    active: true,
    start_at: Time.zone.now)
    if @job.save
      flash[:success] = 'Ponto iniciado com sucesso!'
      redirect_to user_path(current_user)
    else
      flash[:danger] = 'Ocorreu um erro'
    end
  end

  def finish_job
    @job.update(active: false,  end_at: Time.zone.now)
    flash[:success] = 'Ponto finalizado com sucesso!'
    redirect_to user_path(current_user.id)
  end


  

  private 
    def find_job
      @job = current_user.jobs.find_by(service_id: Service.last)
    end

end