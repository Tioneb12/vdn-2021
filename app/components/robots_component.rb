# frozen_string_literal: true

class RobotsComponent < ViewComponent::Base
  def initialize(meta_robots_index:, meta_robots_follow:)
    @meta_robots_index = meta_robots_index
    @meta_robots_follow = meta_robots_follow
  end
end
