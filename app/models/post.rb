class Post < ActiveRecord::Base
  validates :photo_url, :question, presence: true
  validates :question, length: {maximum: 500, too_long: "%{count} characters is the maximum allowed"}
end
