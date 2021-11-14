class Theme < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_one_attached :main_image

  private

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
