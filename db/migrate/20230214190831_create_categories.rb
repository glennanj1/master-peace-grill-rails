class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.string :add_ons
      t.boolean :cssClass
      t.boolean :menuCategory
      t.boolean :menuCategoryAndBYO
      t.string :menuImage

      t.timestamps
    end
  end
end
