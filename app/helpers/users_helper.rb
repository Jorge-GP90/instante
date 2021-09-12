module UsersHelper
  def ensure_correct_user
    if current_user.id != params[:id].to_i
      redirect_to posts_path
    end
  end
end
