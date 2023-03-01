class ModelSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :picture, :active
end
