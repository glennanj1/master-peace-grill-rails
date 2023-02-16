class UpdateFoodCategoryAssociation < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :category, :string
    add_reference :foods, :category, foreign_key: true, null: false
  end
end
