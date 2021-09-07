class UsersController < ApplicationController
skip_before_action :login_required, only: [:new, :create]
before_action :set_user, only: [:show, :edit, :update, :destroy]
# include UsersHelper
# before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def edit
    
  end
  def show

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
    
  end
  def destroy
    
  end
  private
  def user_paragrams
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
  end
  def set_user
    @user = User.find(params[:id])
  end
end
