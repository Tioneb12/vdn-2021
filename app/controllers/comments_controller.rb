# frozen_string_literal: true

class CommentsController < ApplicationController #:nodoc:
  before_action :set_post, only: %i[new create]

  def create
    @comment = @post.comments.new(comment_params)

    if @comment.save
      flash.notice = "Commentaire publié"
      redirect_to post_path(@post, anchor: @comment.id)
    else
      flash.alert = "Une erreur est survenue: #{@comment.errors.full_messages.join(', ')}"
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:pseudo, :email, :website, :comment)
  end

  def set_post
    @post = Post.friendly.find(params[:post_id])
  end
end