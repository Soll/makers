class Video < ActiveRecord::Base
	mount_uploader :content, ContentUploader

	belongs_to :user
end
