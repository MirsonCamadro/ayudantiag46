class Comment < ApplicationRecord
  belongs_to :user
  has_many :comments
  paginates_per 50
  
  def user_avatar
    self.user.avatar
  end

  def user_name
    self.user.name
  end

  def father_avatar
    Comment.find(self.comment_id).user.avatar
  end

  def father_name
    Comment.find(self.comment_id).user.name
  end

end
