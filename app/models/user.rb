class User < ApplicationRecord
  has_many :posts

  has_secure_password

  validates :password, length: {minimum: 8}
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/, message: ': Email is invalid'}

end
