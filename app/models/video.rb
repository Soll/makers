class Video < ActiveRecord::Base
	mount_uploader :content, ContentUploader
  has_many :rates
  has_many :comments
	belongs_to :user
end
