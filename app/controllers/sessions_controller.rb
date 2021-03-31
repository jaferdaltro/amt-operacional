class SessionsController < ApplicationController
  # get root_path
  def new
  end

  # post login_path
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "Combinação Email/Senha inválida"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
  
end