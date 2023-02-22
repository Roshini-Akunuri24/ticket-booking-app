class MovieTicketsController < ApplicationController
  before_action :set_movie_ticket, only: %i[ show edit update destroy ]

  # GET /movie_tickets or /movie_tickets.json
  def index
    @movie_tickets = MovieTicket.all.paginate(page: params[:page], per_page: 6)
    @location = Location.find(params[:location]).name if params[:location]
    if @location == "Hyderabad"
      @movie_tickets = MovieTicket.where(location: params[:location]).paginate(page: params[:page], per_page: 2)
    elsif @location == "Warangal"
      @movie_tickets = MovieTicket.where(location: params[:location]).paginate(page: params[:page], per_page: 2)
    elsif @location == "Vijayawada"
      @movie_tickets = MovieTicket.where(location: params[:location]).paginate(page: params[:page], per_page: 2)
    end
  end

  # GET /movie_tickets/1 or /movie_tickets/1.json
  def show 
    @theatre=Theatre.find(params[:theatre_id]) if params[:theatre_id]
    @movie_ticket=MovieTicket.find(params[:id])
  end
  
  # def sort_by_location
  #   @movie_tickets=MovieTicket.all
  #   if params[:name] == "Hyderabad"
  #     @movie_tickets=@movie_tickets.where(location: { name: "Hyderabad" })
  #   elsif params[:name] == "Warangal"
  #     @movie_tickets=@movie_tickets.where(location: { name: "Warangal" })
  #   elsif params[:name] == "Vijayawada"
  #     @movie_tickets=@movie_tickets.where(location: { name: "Vijayawada" })
  #   end
  # end


  # GET /movie_tickets/new
  def new
    @movie_ticket = MovieTicket.new
  end

  # GET /movie_tickets/1/edit
  def edit
  end

  # POST /movie_tickets or /movie_tickets.json
  def create
    @movie_ticket = MovieTicket.new(movie_ticket_params)
    # @movie_ticket.user_id = current_user.id
    respond_to do |format|
      if @movie_ticket.save
        format.html { redirect_to movie_ticket_url(@movie_ticket), notice: "Movie ticket was successfully created." }
        format.json { render :show, status: :created, location: @movie_ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_tickets/1 or /movie_tickets/1.json
  def update
    respond_to do |format|
      if @movie_ticket.update(movie_ticket_params)
        format.html { redirect_to movie_ticket_url(@movie_ticket), notice: "Movie ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_tickets/1 or /movie_tickets/1.json
  def destroy
    @movie_ticket.destroy

    respond_to do |format|
      format.html { redirect_to movie_tickets_url, notice: "Movie ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_ticket
      @movie_ticket = MovieTicket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_ticket_params
      params.require(:movie_ticket).permit(:movie_name, :date, :image, :location_id, :show_id, :theatre_id)
    end
end
