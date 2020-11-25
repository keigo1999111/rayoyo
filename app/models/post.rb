class Post < ApplicationRecord
  validates :content, {presence: true,length:{maximum:1000}}
  validates :user_id, {presence: true}


  belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

  def user
    return User.find_by(id: self.user_id)
  end
end
