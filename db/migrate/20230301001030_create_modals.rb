class CreateModals < ActiveRecord::Migration[7.0]
  def change
    create_table :modals do |t|
      t.string :title
      t.string :body
      t.string :picture
      t.boolean :active
      
      t.timestamps
    end
  end
end
