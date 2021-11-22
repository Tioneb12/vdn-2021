class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :post_themes, dependent: :destroy
  has_many :themes, through: :post_themes

  private

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
