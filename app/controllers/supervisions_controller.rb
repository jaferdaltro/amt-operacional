class SupervisionsController < ApplicationController
  def cars
  end

  def stuffs
  end

  def people
    
  end

  def division
  end

  def calls
  end

  private

  def set_service
    service = current_user.services.last
  end

end
