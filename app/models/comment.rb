class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :body, presence: true, length: { maximum: 3000}
  validates :post_id, presence: true
  validates :user_id, presence: true
end
