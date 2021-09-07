class SessionsController < ApplicationController
skip_before_action :login_required, only: [:new, :create]  
  def new
  end
  def create
    user = User.find_by(email: session_params[:email].downcase)
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to posts_path
    else
      flash.now[:danger] = 'I failed to login'
      render :new
    end
  end
  def destroy
    session.delete(:user_id)
    flash.now[:notice] = "Have been Logging out"
    redirect_to new_session_path
  end
  private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end 
