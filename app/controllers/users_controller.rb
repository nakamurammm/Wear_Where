class UsersController < ApplicationController
  def show
    @users = User.all
    @user = User.find(params[:id])
    @post_images = @user.post_images.all
  end

  def index
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
end

def user_params
    params.require(:user).permit(:name)
  end
