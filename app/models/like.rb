class Like < ApplicationRecord
  belongs_to :post, :user

  after_save :update_like_counter

  private

  def update_likes_counter
    post.likes_counter += 1
  end

end
