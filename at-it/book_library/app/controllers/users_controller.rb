class UsersController < ApplicationController
  
  before_action :set_user, only: %w(show edit update destroy)

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render new_user_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render "edit"
      #redirect_to edit_user_path(@user) #違いを理解
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :department)
  end

  def set_user
    @user = User.find_by(id: params[:id]) # find(val)と同じ
  end
end
