class MovieTicket < ApplicationRecord
    validates :movie_name, presence: true 
    # has_many :tickets
    mount_uploader :image, ImageUploader
    # belongs_to :user
    belongs_to :location, optional: true
    belongs_to :show, optional: true
    belongs_to :theatre, optional: true
    has_many :seats
    belongs_to :user
    has_many :booked_tickets

    # def unavailable_seats
    #     seats.where(booked: true)
    #   end

    #   def available_seats
    #     seats.where(booked: false)
    #   end

    # def total_price
    #     unavailable_seats.where(user_id: user.id).sum(:price)
    # end
    
end