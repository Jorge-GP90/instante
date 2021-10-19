class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorite_posts
  end

  def create
    favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_path, notice: "#{favorite.post.user.name}'s post has been added to favorites"
  end

  def destroy
    favorite = current_user.favorites.find_by(post_id: params[:id]).destroy
    redirect_to posts_path, notice: "#{favorite.post.user.name} Unpostged Mr.'s post"
  end
end
