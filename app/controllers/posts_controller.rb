class PostsController < ApplicationController
  def index
    @posts1 = Post.where(room: 1).order('created_at DESC')
    @posts2 = Post.where(room: 2).order('created_at DESC')
    @posts3 = Post.where(room: 3).order('created_at DESC')
    @posts4 = Post.where(room: 4).order('created_at DESC')
    @posts5 = Post.where(room: 5).order('created_at DESC')
    @posts6 = Post.where(room: 6).order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path(room: post_params[:room])
    else
      redirect_back(fallback_location: new_post_path)
    end
  end

  private

  def post_params
    params.require(:post).permit(:room, :problem, :detail).merge(user_id: current_user.id)
  end

end
