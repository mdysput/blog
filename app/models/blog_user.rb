class BlogUser < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX=  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            length: { minimum: 10, maximum: 30},
            uniqueness: { case_sensitive: false},
            format: { with: VALID_EMAIL_REGEX}

end