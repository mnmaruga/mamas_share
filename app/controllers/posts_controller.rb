class PostsController < ApplicationController
  def index
    @posts1 = Post.where(room: 1).order('created_at DESC')
    @posts2 = Post.where(room: 2).order('created_at DESC')
    @posts3 = Post.where(room: 3).order('created_at DESC')
    @posts4 = Post.where(room: 4).order('created_at DESC')
    @posts5 = Post.where(room: 5).order('created_at DESC')
    @posts6 = Post.where(room: 6).order('created_at DESC')
  end
end
