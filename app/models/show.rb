class Show < ApplicationRecord
    has_many :movie_tickets
    belongs_to :theatre
end
