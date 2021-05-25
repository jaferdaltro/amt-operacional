class ApplicationController < ActionController::Base
  include SessionsHelper

  def require_admin
    if !(logged_in? && current_user.user_admin?)
        flash[:danger]="Apenas admistradores podem acessar essa página"
        redirect_to articles_path
    end
  end

  def logged_in_user
    unless logged_in?
      store_location
      # flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end
end
