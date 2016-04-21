class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, length: { maximum: 140 }
  validates :avatars, presence: true
  validates :tags, presence: true
  mount_uploader :avatars, AvatarUploader
  
  def self.search0(tag)
    Micropost.where(tags: tag)
  end
  
  def self.search1(tag)
    Micropost.where(['tags LIKE ?', "%#{tag}%"])
  end
  
end
