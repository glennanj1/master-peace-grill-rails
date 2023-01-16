class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category, :add_ons, :details
end
