class UsersController < ApplicationController
  before_action :require_admin, only: [:create, :index]
  before_action :logged_in_user
  before_action :verify_password, only: [:update, :create]
  before_action :set_user, only: [:show, :edit, :update]



  def edit; end
  def show; end

  def index
    @users = User.order(:team_id)
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
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'Dados atualizados'
      if current_user.admin?
        redirect_to users_path
      else
        redirect_to @user
      end
    else
      flash[:warning] = 'Houve falha'
      render :edit
    end
  end

  private

  
  def verify_password
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].extract!(:password, :password_confirmation)
    end
  end
  
  def user_params
    params.require(:user).permit(:name,  :password,
                                 :password_confirmation, :admin, :registration, :username, :team_id, :role_id, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
  
  
end
