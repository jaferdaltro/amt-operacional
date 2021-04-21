class CheckListsController < ApplicationController
  before_action :set_check_list, only: [:show, :update]
  
  
  def index
    @check_lilsts = CheckList.all
  end

  def show
  end

  def update
    @check_list.update(check_list_params)
  end

  def new
    @check_list = CheckList.new
    @check_list_items = CheckListItem.all
    @vehicles = Vehicle.all
  end
  

  def create
    @check_list = current_user.check_lists.build(check_list_params)
  
  end

  private

    def set_check_list
      @check_list = CheckList.find(params[:id])
    end

    def check_list_params
      params.require(:check_list).permit(:beggin_km, :end_km)
    end
    

  
end
