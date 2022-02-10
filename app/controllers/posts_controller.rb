class PostsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @posts = @user.posts.all
  end

  def show
    @user = User.find(params[:id])
    @post = Post.find_by_id(params[:id])
    @comments = @post.comments.all
  end
end
