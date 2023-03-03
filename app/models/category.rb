class Category < ApplicationRecord
    has_many :foods

    validates :name, length:{ maxiumum: 65,
    too_long: "%{count} characters is the maxiumum allowed"}

    validates :description, :add_ons, length: { maximum: 200}
end
