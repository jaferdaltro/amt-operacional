module SessionsHelper

  # Logs in the given user. 
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    if (current_user.jobs.any?)
      current_user.jobs.last.update_attribute(:end_at, Time.zone.now)  
      current_user.jobs.last.update_attribute(:active, false) 
    end  
    reset_session
    current_user = nil
  end

 
  

  
  
  
end
