class Video < ActiveRecord::Base
	mount_uploader :content, ContentUploader
  has_many :rates
	belongs_to :user
end
