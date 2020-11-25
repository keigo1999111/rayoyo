class User < ApplicationRecord


  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}


  has_many :posts,dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  acts_as_followable # フォロワー機能
  acts_as_follower   # フォロー機能



  def posts
    return Post.where(user_id: self.id)
  end




end
