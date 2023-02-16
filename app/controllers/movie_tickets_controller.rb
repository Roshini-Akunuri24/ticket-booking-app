class MovieTicketsController < ApplicationController
  load_and_authorize_resource
  before_action :set_movie_ticket, only: %i[ show edit update destroy ]
 

  # GET /movie_tickets or /movie_tickets.json
  def index
    @movie_tickets = MovieTicket.all.paginate(page: params[:page], per_page: 4)
  end

  # GET /movie_tickets/1 or /movie_tickets/1.json
  def show
  end

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
      params.require(:movie_ticket).permit(:movie_name, :from, :to, :place, :date, :image, :location)
    end
end
