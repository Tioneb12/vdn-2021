# frozen_string_literal: true

class CommentsComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

  def render?
    @post.comments.present?
  end

end
