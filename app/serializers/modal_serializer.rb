class ModalSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :picture, :active
end
