class Coach < ApplicationRecord
    has_many :sessions
    has_many :reviews
end
