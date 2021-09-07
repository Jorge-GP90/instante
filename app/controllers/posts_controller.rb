class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    
  end
  def edit
    
  end
  def show
    
  end
  def create
    
  end
  def update
    
  end
  def destroy
    
  end
  private
  def post_paragrams
    params.require(:post).permit(:title, :content, :image, :image_cache)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
