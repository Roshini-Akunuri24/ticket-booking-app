class SeatsController < ApplicationController
    def create
      @movie_ticket = MovieTicket.find(params[:show_id])
      @seat = Seat.new(seat_params)
      @seat.movie_ticket = @movie_ticket

      if @seat.save
        redirect_to show_path(@movie_ticket), notice: "Seat was successfully created."
      else
        render :new
      end
    end

    def show
      @movie_ticket = MovieTicket.find(params[:movie_ticket_id])
      @seat = @movie_ticket.seats.find(params[:id])
       if @seat.booked == true
         @seat.update(booked: false)
       else
        @seat.update(booked: true)
       end 
      redirect_to @movie_ticket
    end
    
    private

    def seat_params
      params.require(:seat).permit(:number, :movie_ticket_id, :booked)
    end
end
  