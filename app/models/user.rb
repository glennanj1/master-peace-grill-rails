class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :email, :password, presence: true

    has_secure_password
end
