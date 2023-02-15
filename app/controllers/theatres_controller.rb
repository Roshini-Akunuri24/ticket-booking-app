class TheatresController < ApplicationController
    def new
        @theater = Theater.new
    end
    
      def create
        @theater = Theater.new(theater_params)
    
        if @theater.save
          redirect_to theaters_path, notice: "Theater mapping was successfully created."
        else
          render :new
        end
      end
    
      private
    
      def theater_params
        params.require(:theater).permit(:location, :number_of_shows, :films_played, :timings)
      end
end
