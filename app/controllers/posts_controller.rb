class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post["author"] = params["post"]["author"]
    @post["body"] = params["post"]["city"]
    @post["image"] = params["post"]["image"]
    @post.save
    redirect_to "/posts"
  end

  def destroy
    # find post find_by
    # post.destroy
    # redirect
  end

end
