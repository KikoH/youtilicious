class Image < ActiveRecord::Base
	belongs_to :item
	mount_uploader :image, ItemUploader

	validates :image, file_size: { less_than_or_equal_to: 1.megabytes.to_i }
end
