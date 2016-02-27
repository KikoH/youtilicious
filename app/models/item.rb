class Item < ActiveRecord::Base
	mount_uploader :image, ItemUploader

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
