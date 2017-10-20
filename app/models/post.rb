class Post < ActiveRecord::Base
  validates :photo_url, :question, presence: true
  validates :question, length: {maximum: 500, too_long: "%{count} characters is the maximum allowed, fren"}

  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  belongs_to :best_answer, class_name: :Answer
  has_many :answers
end
