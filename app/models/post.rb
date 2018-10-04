class Post < ApplicationRecord
  belongs_to :user
validates :title, :content, presence: :true
mount_uploader :image, ImageUploader 
 has_many :comments, dependent: :destroy
end
