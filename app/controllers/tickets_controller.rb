class TicketsController < ApplicationController
    def login
    
    end   

    def home
        @movie_tickets = MovieTicket.all
        if user_signed_in?
             flash[:notice] = "Welcome #{current_user.name}, you are signed in."
        elsif admin_signed_in?
            flash[:notice] = "Welcome admin #{current_admin.name}, you are signed in."
        end
    end
end
