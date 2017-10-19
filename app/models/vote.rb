class Vote < ActiveRecord::Base
  validates :votable_type, presence: true

  belongs_to :user
  belongs_to :votable, polymorphic: true
end
