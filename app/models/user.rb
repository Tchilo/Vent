class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  def return_last_three_posts
    posts.order('created_at Desc').limit(3)
  end
end
