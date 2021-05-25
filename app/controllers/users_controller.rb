class UsersController < ApplicationController
  before_action :logged_in_user
  before_action :set_user, only: [:show, :edit, :update]
  def index
    @users = User.order(:username)
  end

  def edit
    
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'Dados atualizados'
      redirect_to @user
    else
      render :edit
    end
  end
  
  
  
  
  def show
    
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
    params.require(:user).permit(:name,  :password,
                                 :password_confirmation, :admin, :registration, :supervisor, :username)
  end

  def set_user
    @user = User.find(params[:id])
  end
  
  
end
