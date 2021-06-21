class SessionsController < ApplicationController
  # get login_path
  def new
  
  end

  # post login_path
  def create
    user = User.find_by(username: params[:session][:username].downcase.strip)
    if user && user.authenticate(params[:session][:password])
      reset_session
      remember user
      log_in user
      flash.now[:success] = "Login realizado com sucesso"
      redirect_to root_path
    else
      flash.now[:danger] = "Combinação usuário/senha inválida"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end
  
  
end
