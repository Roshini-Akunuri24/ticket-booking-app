class SearchController < ApplicationController
    def index
        @movie_tickets = MovieTicket.all.paginate(page: params[:page], per_page: 6)
        if params[:location] == "Hyderabad"
          @movie_tickets = MovieTicket.where(params[:location] => "Hyderabad")
        else  
          @movie_tickets = MovieTicket.all.paginate(page: params[:page], per_page: 6)
        end
    end


#   def index
#     search_field = params[:loca].present? ? params[:search] : '*'
#     location_id = params[:location].present? ? params[:location].to_i : nil
     
#     @movie_tickets = if location_id
#       MovieTicket.find(search_field, fields: %i[:movie_name, :from, :to, :place, :date, :image, :location_id], where: { location_id: })
#     else
#       MovieTicket.find(search_field, fields: %i[:movie_name, :place])
#     end

#   respond_to do |format|
#     format.html { render :index }
#     format.turbo_stream do
#       render turbo_stream:
#         turbo_stream.update('movie_tickets',
#                             partial: 'movie_tickets/movie_tickets',
#                             locals: { movie_tickets: @movie_tickets })
# end
# end
    
#   end
end
