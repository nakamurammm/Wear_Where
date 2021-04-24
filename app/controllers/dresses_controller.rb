class DressesController < ApplicationController
  def new
    @dress = Dress.new
    @genres = Genre.all
    @seasons = Season.all
    @children = Child.all
  end
  def create
    @dress = Dress.new(dress_params)

    if @dress.save
      params[:dress][:season].each do |season_id|
        DressesSeason.create(season_id: season_id,dress_id:@dress.id)
      end
      redirect_to dresses_path
    else
      render :new
      @seasons = Season.all
    end
  end

  def index
    @dresses = Dress.all
    @dresses1 = Dress.where(genre_id: 1)
    @dresses2 = Dress.where(genre_id: 2)
    @dresses3 = Dress.where(genre_id: 3)
    @dresses4 = Dress.where(genre_id: 4)
    @dresses5 = Dress.where(genre_id: 5)
    @dresses6 = Dress.where(genre_id: 6)
    @dresses7 = Dress.where(genre_id: 7)
    @dresses8 = Dress.where(genre_id: 8)
    @dresses9 = Dress.where(genre_id: 9)
    @dresses10 = Dress.where(genre_id: 10)
    @dresses11 = Dress.where(genre_id: 11)
    @dresses12 = Dress.where(genre_id: 12)

  end

  def show
    @dress = Dress.find(params[:id])

  end

  def edit
    @dress = Dress.find(params[:id])
    @children = Child.all
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
    params.require(:dress).permit(:user_id, :child_id, :genre_id, :season_id, :image, :size, :explanation, season_ids: [])
  end

end
