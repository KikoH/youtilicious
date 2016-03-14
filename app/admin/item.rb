ActiveAdmin.register Item do

	permit_params :title, :main_image, :description, :price, :category, images_attributes: [:id, :image]

	form do |f|
		f.inputs "Items" do
			f.input :title
			f.input :description
			f.input :price
			f.input :category, :label => 'Category', :as => :select, :collection => ['weddings', 'birthdays', 'special']
			f.input :main_image, :hint => image_tag(f.object.main_image.url(:thumb))
		end

		f.inputs do
			f.has_many :images do |i|
				i.input :image, label: 'Images',
				as: :file, :hint => i.object.image.nil? ? i.template.content_tag(:span, "No Image Yet") : i.template.image_tag(i.object.image.url(:thumb))
			end
		end
		f.actions
	end
end