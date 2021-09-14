class UsersController < ApplicationController
skip_before_action :login_required, only: [:new, :create]
before_action :set_user, only: [:show, :edit, :update, :destroy]
include UsersHelper
before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def edit 
  end
  def show
    # posts = current_user.posts.where.not(image: nil)
    # @posts = current_user.posts.all.order("id DESC")
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  def destroy
    @user.destroy
    redirect_to new_user_path
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
  end
  def set_user
    @user = User.find(params[:id])
  end
end
