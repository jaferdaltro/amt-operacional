class UsersController < ApplicationController
  before_action :logged_in_user
  def index
    @users = User.all
    
  end
  
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Bem vindo ao AMT OPERACIONAL!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :admin, :registration, :supervisor, :alias)
  end
  
end
