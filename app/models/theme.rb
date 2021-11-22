class Theme < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_one_attached :main_image
  has_many :post_themes, dependent: :destroy
  has_many :posts, through: :post_themes

  private

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
