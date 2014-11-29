class Micropost < ActiveRecord::Base
  attr_accessible :content
  attr_accessible :number_of_upvotes, :photo
  belongs_to :user
  has_attached_file :photo
  validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/, /mp4\Z/]

  validates :user_id, presence: true
  validates :content, presence: true

  default_scope order: 'microposts.created_at DESC'

  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id", 
          user_id: user.id)
  end
end
