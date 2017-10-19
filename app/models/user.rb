class User < ActiveRecord::Base
  include BCrypt

  validates :username, :first_name, :last_name, :email, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :password, length: {minimum: 8, too_short: "%{count} characters is the minimum allowed, fren"}

  has_many :posts
  has_many :answers
  has_many :votes
  has_many :comments

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(plain_text_password)
    @password = Password.create(plain_text_password)
    self.hashed_password = @password
  end

  def authenticate(plain_text_password)
    self.password == plain_text_password
  end
end
