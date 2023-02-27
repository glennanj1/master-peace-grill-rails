class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price, :precision => 10, :scale => 2
      t.string :category
      t.text :add_ons
      t.text :details

      t.timestamps
    end
  end
end
