class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
