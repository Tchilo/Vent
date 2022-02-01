class Post < ApplicationRecord
  belongs_to :author, class_name: 'user'
  has_many :likes, :comments

  after_save :update_user_post_counter

  def return_most_recent_comments
    comments.order('created_at Desc').limit(5)
  end

  private

  def update_user_post_counter
    user.increment!(:posts_counter)
  end
end
