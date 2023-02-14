class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :add_ons
end
