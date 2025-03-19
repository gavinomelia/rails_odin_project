class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
  validates :user_id, presence: true

  belongs_to :user

  has_many :comments, dependent: :destroy
end
