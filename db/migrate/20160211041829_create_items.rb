class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :title
    	t.string :image
    	t.integer :price
    	t.string :description
      t.timestamps null: false
    end
  end
end
