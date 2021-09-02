class ChildrenController < ApplicationController

  before_action :find_child, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @children = Child.all
  end

  def show; end

  def new
    @child = current_user.children.build
  end

  def create
    @child = current_user.children.build(child_params)
    if @child.save
      redirect_to @child, notice: 'Successfully Created a Child'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @child.update(child_params)
      redirect_to child_path, notice: 'Successfully Updated'
    else
      render edit
    end
  end

  def destroy
    @child.destroy
    redirect_to root_path, notice: 'Successfully Deleted'
  end

  private

  def child_params
    params.require(:child).permit(:name, :age, :grade, :description, :gender)
  end

  def find_child
    @child = Child.find(params[:id])
  end

end
