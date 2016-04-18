class Item < ActiveRecord::Base
	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true
	mount_uploader :main_image, ItemUploader

	validates :main_image, file_size: { less_than_or_equal_to: 0.5.megabytes.to_i }

	def wedding_category?
		category === "weddings"
	end

	def birthday_category?
		category === "birthdays"
	end

	def special_category?
		category === "special"
	end
end
