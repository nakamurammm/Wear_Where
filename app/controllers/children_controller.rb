class ChildrenController < ApplicationController
  def new
    @child = Child.new
  end
  def create
    @child = Child.new(child_params)
    @child.user_id = current_user.id
    if @child.save
      redirect_to children_path
    else
      render :new
    end
  end

  def show
    @children = Child.all
  end

  def edit
    @child = Child.find(params[:id])
  end
  def update
    child = Child.find(params[:id])
    child.update(child_params)
    redirect_to children_path

  end
  def index
    @children = Child.all
    @user = current_user
     @children = Child.where(user_id: current_user.id).includes(:user).order("created_at DESC")
  end

  def destroy
    child = Child.find(params[:id])
    child.destroy
    redirect_to children_path
  end

private

  def child_params
  params.require(:child).permit(:name, :birthday, :tall, :tops_size, :bottom_size, :foot_size, :user_id, :dress_id)
  end
end
