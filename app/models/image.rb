class Image < ActiveRecord::Base
	belongs_to :item
	mount_uploader :image, ItemUploader
end
