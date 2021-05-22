class DressesController < ApplicationController
  before_action :set_input_items, only: [:new, :create, :edit, :update]

  def new
    @dress = Dress.new
    @genres = Genre.all
    @seasons = Season.all
    @children = Child.all
  end
  def create

    @dress = Dress.new(dress_params)
    @dress.user_id = current_user.id
    params[:dress][:season].each do |season_id|
      DressesSeason.create(season_id: season_id,dress_id: @dress.id)
    end
    if @dress.save
      tags = Vision.get_image_data(@dress.image)
      tags.each do |tag|
        @dress.tags.create(name: tag)
      end
      redirect_to dress_path(@dress.id)
    else
      render :new
      @seasons = Season.all
    end
  end

  def index
    # @user = User.find(params[:id])
    # @dresses = @user.dress.all
    @dresses = current_user.dresses.includes(:user)
    @genres = Genre.all
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
    if @dress.update(dress_params)
      @dress.tags.destroy_all
      tags = Vision.get_image_data(@dress.image)
        tags.each do |tag|
          @dress.tags.create(name: tag)
        end
      redirect_to dress_path(@dress.id)
    end
  end

  def destroy
    @dress = Dress.find(params[:id])
    @dress.destroy
    redirect_to dresses_path
  end

  private
  def dress_params
    params.require(:dress).permit(:user_id, :child_id, :genre_id, :image, :size, :explanation, season_ids: [])
  end

  def set_input_items
  @children = Child.all
  @genres = Genre.all
  @seasons = Season.all
  end

end
