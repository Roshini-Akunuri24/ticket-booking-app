class TicketsController < ApplicationController
    def login
    
    end   

    def home
        @movie_tickets = MovieTicket.all
        if user_signed_in?
             flash[:notice] = 'Welcome user, you are signed in.'
        elsif admin_signed_in?
            flash[:notice] = 'Welcome admin, you are signed in.'
        end
    end
end
