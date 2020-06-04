class User < ApplicationRecord
    has_secure_password
    has_many :registrations
    has_many :reviews
    has_many :sessions, through: :registrations
    
end
