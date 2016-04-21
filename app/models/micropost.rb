class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, length: { maximum: 140 }
  validates :avatars, presence: true
  validates :tags, presence: true
  mount_uploader :avatars, AvatarUploader
  
  def self.search(tag)
    if tag
      Micropost.where(['tags LIKE ?', "%#{tag}%"])
    else
      Micropost.all
    end
  end
  
end
