class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update, :show]

  def show
    @users = User.all
    @user = User.find(params[:id])
    @post_images = @user.post_images.all
    @children = Child.all

  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render "edit"
    else
      redirect_to user_path(current_user)
    end
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end


end
