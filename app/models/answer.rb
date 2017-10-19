class Answer < ActiveRecord::Base
  # Remember to create a migration!
  validates :description_text, presence: true
  validates :description_text, length: {maximum: 500, too_long: "%{count} characters is the maximum allowed, fren"}

  belongs_to :user
  belongs_to :post
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
end
