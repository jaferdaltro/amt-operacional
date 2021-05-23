module SessionsHelper

  # Logs in the given user. 
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.encrypted[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def logged_in?
    !current_user.nil?
  end

    # Remembers a user in a persistent session.
    def remember(user)
      user.remember
      cookies.permanent.encrypted[:user_id] = user.id
      cookies.permanent[:remember_token] = user.remember_token
    end

      # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  def log_out
    # if (current_user.clocks.any?)
    #   current_user.clocks.last.update_attribute(:end_at, Time.zone.now)  
    #   current_user.clocks.last.update_attribute(:active, false) 
    # end
    forget(current_user)  
    reset_session
    current_user = nil
  end

   # Stores the URL trying to be accessed.
   def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
  

  
  
  
end
