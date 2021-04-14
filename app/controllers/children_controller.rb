class ChildrenController < ApplicationController
  def new
    @child = Child.new
  end
  def create
    @child = Child.new(child_params)
    @child.save
    redirect_to child_path(@child.id)
  end
  def show

    @child = Child.find(params[:id])
  end
  def edit
  end
  def update
  end
  def index
  end
  def destroy
  end

private

  def child_params
  params.require(:child).permit(:name, :birthday, :tall, :tops_size, :bottom_size, :foot_size, :user_id, :dress_id)
  end
end
