class Food < ApplicationRecord
    belongs_to :category

    # Conditional validation for if there is detail, or addon since not every listing has  a detail. Will need to write soon.

    validates :name, length:{ maxiumum: 65,
    too_long: "%{count} characters is the maxiumum allowed"}

    validates :price, :comparison:{:less_than 500}

    validates :category_id, prescence: true

    validates :details, :add_ons, length:{maxiumum: 200,
    too_long: "%{count} characters is the maxiumum allowed"}

end
