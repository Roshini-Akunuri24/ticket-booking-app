class TicketsController < ApplicationController
    def login
    end   

    def home
        @movie_tickets = MovieTicket.all
    end
end
