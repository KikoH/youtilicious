class Item < ActiveRecord::Base
	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true
	mount_uploader :main_image, ItemUploader

	def wedding_category?
		category === "weddings"
	end

	def birthday_category?
		category === "birthdays"
	end

	def custom_category?
		category === "custom"
	end
end
