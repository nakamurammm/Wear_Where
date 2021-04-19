class DressesController < ApplicationController
  def new
    @dress = Dress.new
    @genres = Genre.all
    @seasons = Season.all
  end
  def create
    @dress = Dress.new(dress_params)

    if @dress.save!
      params[:dress][:season].each do |season_id|
        DressesSeason.create(season_id: season_id,dress_id:@dress.id)
      end
      redirect_to dresses_path
    else
      @seasons = Season.all
    end
  end

  def index
    @dresses = Dress.all

  end

  def show
    @dress = Dress.find(params[:id])
  end

  def edit
    @dress = Dress.find(params[:id])
    @genres = Genre.all
    @seasons = Season.all
  end

  def update
    @dress = Dress.find(params[:id])

    @dress.update(dress_params)

    redirect_to dress_path(@dress.id)
  end
  def destroy
    @dress = Dress.find(params[:id])
    @dress.destroy
    redirect_to dresses_path
  end

  private
  def dress_params
    params.require(:dress).permit(:user_id, :genre_id, :season_id, :image, :size, :introduction, season_ids: [])
  end

end
