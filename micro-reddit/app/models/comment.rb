class Comment < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true

  belongs_to :user
  belongs_to :post
end
