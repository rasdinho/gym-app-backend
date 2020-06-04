class Session < ApplicationRecord
    has_many :registrations
    belongs_to :coach
end
