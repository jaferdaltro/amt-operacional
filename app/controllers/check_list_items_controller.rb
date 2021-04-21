class CheckListItemsController < ApplicationController

  before_action :set_check_list
  before_action :set_check_list_items, only: [:show, :edit, :update, :destroy]

  # GET check_lists/1/check_list_items
  def index
    @check_list_items = @check_list.check_list_items
  end

  # GET check_lists/1/check_list_items/1
  def show
  end

  # GET check_lists/1/check_list_items/new
  def new
    @check_item = @check_list.check_list_items.build
  end

  # GET check_lists/1/check_list_items/1/edit
  def edit
  end

  # POST check_lists/1/check_list_items
  def create
    @check_item = @check_list.check_list_items.build(check_list_items_params)

    if @check_list_items.save
      redirect_to([@check_list_items.check_list, @check_list_items], notice: 'Check item was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT check_lists/1/check_list_items/1
  def update
    if @check_list_items.update_attributes(check_list_items_params)
      redirect_to([@check_list_items.check_list, @check_list_items], notice: 'Check item was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE check_lists/1/check_list_items/1
  def destroy
    @check_list_items.destroy

    redirect_to check_list_items_url(@check_list)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_list
      @check_list = CheckList.find(params[:check_list_id])
    end

    def set_check_list_items
      @check_list_items = @check_list.check_list_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def check_list_items_params
      params.require(:check_item).permit(:description, :ok, :verified_at, :check_list_id)
    end
end