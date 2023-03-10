class ShowsController < ApplicationController
    def index
        @shows = Show.all
    end

    def show 
      @show = Show.find(params[:id])
    end

    def new
        @show = Show.new
    end
    
      # GET /movie_tickets/1/edit
      def edit
        @show = Show.find(params[:id])
      end
    
      # POST /movie_tickets or /movie_tickets.json
      def create
        @show = Show.new(show_params)
        respond_to do |format|
          if @show.save
            format.html { redirect_to show_url(@show), notice: "show was successfully created." }
            format.json { render :show, status: :created, show: @show }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @show.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # PATCH/PUT /movie_tickets/1 or /movie_tickets/1.json
      def update
        @show = Show.find(params[:id])
        respond_to do |format|
          if @show.update(show_params)
            format.html { redirect_to movie_ticket_url(@movie_ticket), notice: "show was successfully updated." }
            format.json { render :show, status: :ok, show: @show }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @show.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # DELETE /movie_tickets/1 or /movie_tickets/1.json
      def destroy
        @show = Show.find(params[:id])
        @show.destroy
    
        respond_to do |format|
          format.html { redirect_to show_url, notice: "show was successfully destroyed." }
          format.json { head :no_content }
        end
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_show
          @show = Show.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def show_params
          params.require(:show).permit(:time)
        end
end
    
