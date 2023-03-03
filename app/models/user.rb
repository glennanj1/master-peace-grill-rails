class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :email, :password, presence: true

    validates :password, length: { minimum: 8 }, :on => :create
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

    has_secure_password
end
