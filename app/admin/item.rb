ActiveAdmin.register Item do

	permit_params :title, :image, :description, :price, :category

	form do |f|
		f.inputs "Items" do
			f.input :title
			f.input :description
			f.input :price
			f.input :category, :label => 'Category', :as => :select, :collection => ['weddings', 'birthdays', 'custom']
			f.input :image
		end
		f.actions
	end
end