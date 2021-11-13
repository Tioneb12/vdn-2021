class User < ApplicationRecord
  include Clearance::User
  extend FriendlyId
  friendly_id :pseudo, use: :slugged

end
