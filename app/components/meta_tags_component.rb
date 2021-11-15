# frozen_string_literal: true

class MetaTagsComponent < ViewComponent::Base
  def initialize(meta_robots_index:, meta_robots_follow:, meta_title:, meta_description:, meta_type:, meta_image:)
    @meta_robots_index = meta_robots_index
    @meta_robots_follow = meta_robots_follow
    @meta_title = meta_title || "default title"
    @meta_description = meta_description || "default description"
    @meta_type = meta_type || "default type"
    @meta_image = meta_image || "default image"
  end
end
