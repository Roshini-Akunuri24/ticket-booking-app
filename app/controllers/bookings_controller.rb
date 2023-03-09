class BookingsController < ApplicationController
    def index
      @bookings = current_user.booked_tickets
    end
end