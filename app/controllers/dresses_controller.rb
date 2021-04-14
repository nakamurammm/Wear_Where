class DressesController < ApplicationController
  def new
    @dress = Dress.new
    @genres = Genre.all
    @sizes = Size.all
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def dress_params
    params.require(:dress).permit(:genre_id, :size_id, :introduction)
  end

end
