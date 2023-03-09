class BookedTicketsController < ApplicationController
  def index
    @booked_tickets = booked_ticket.all
    
  end
  

  # GET /booked_tickets/1 or /booked_tickets/1.json
  def show
    @booked_ticket = BookedTicket.find(params[:id])
  end

  # GET /booked_tickets/new
  def new
    @booked_ticket = BookedTicket.new
  end

  # GET /booked_tickets/1/edit
  def edit
    @booked_ticket = BookedTicket.find(params[:id])
  end

  # POST /booked_tickets or /booked_tickets.json
  def create
    @booked_ticket = BookedTicket.new(booked_ticket_params)
    respond_to do |format|
      if @booked_ticket.save
        format.html { redirect_to booked_ticket_url(@booked_ticket), notice: "booked_ticket was successfully created." }
        format.json { render :show, status: :created, location: @booked_ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booked_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booked_tickets/1 or /booked_tickets/1.json
  def update
    @booked_ticket = BookedTicket.find(params[:id])
    respond_to do |format|
      if @booked_ticket.update(booked_ticket_params)
        format.html { redirect_to booked_ticket_url(@booked_ticket), notice: "booked_ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @booked_ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booked_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booked_tickets/1 or /booked_tickets/1.json
  def destroy
    @booked_ticket = BookedTicket.find(params[:id])
    @booked_ticket.destroy

    respond_to do |format|
      format.html { redirect_to booked_tickets_url, notice: "booked_ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theatre
      @booked_ticket = BookedTicket.find(params[:id])
    end

  def booked_ticket_params
    params.require(:booked_ticket).permit(:show_id, :user_id, :seat_id, :number_of_tickets, :price_per_ticket, :movie_ticket_id)
  end
end

