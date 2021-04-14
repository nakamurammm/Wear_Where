class GenresController < ApplicationController
  def new
    @genre = Genre.all
    @newgenre = Genre.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
