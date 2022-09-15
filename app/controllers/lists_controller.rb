class ListsController < ApplicationController
before_action :select_list, only: %i[show destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save!
    redirect_to list_path(@list.id)
  end

  def show
  end

  def destroy
    @list.destroy
    redirect_to root_path, status: :see_other
    # last line fixed the show issue, always put it for destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def select_list
    @list = List.find(params[:id])
  end
end
