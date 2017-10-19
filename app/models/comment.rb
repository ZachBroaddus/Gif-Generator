class Comment < ActiveRecord::Base
  # Remember to create a migration!
  validates :commentable_type, :description_text, presence: true
  validates :description_text, length: {maximum: 500, too_long: "%{count} characters is the maximum allowed, fren"}

  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
