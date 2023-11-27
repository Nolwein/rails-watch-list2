class ListsController < ApplicationController
before action :set_params, only: [:show]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params) # list_params is a method we defined below
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def set_params
    @list = List.find(params[:id])
  end
end
