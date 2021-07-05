class SupervisionsController < ApplicationController
  before_action :require_supervisor
  before_action :set_service

  def cars
    @cars = Car.where(status: 0)
  end

  def stuffs
  end

  def people
    team_id = current_user.team_id
    @people_team = User.where(team_id: team_id)
  end

  def division
  end

  def calls
  end

  private

  def set_service
    @service = current_user.services.last
  end

end
