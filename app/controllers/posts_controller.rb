class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

end
