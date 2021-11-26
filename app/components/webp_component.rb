# frozen_string_literal: true

class WebpComponent < ViewComponent::Base
  def initialize(photo:, width:, height:, title:, alt:, style_class:)
    @photo = photo
    @width = width
    @height = height
    @title = title
    @alt = alt
    @style_class = style_class
  end

  def render?
    @photo.present?
  end

end
