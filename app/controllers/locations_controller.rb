class LocationsController < ApplicationController

    def index
        @locations = Location.all
    end

    def show 
    end

    def new
        @location = Location.new
    end
    
      # GET /movie_tickets/1/edit
      def edit
      end
    
      # POST /movie_tickets or /movie_tickets.json
      def create
        @location = Location.new(location_params)
        # @movie_ticket.user_id = current_user.id
        respond_to do |format|
          if @location.save
            format.html { redirect_to location_url(@location), notice: "location was successfully created." }
            format.json { render :show, status: :created, location: @location }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @location.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # PATCH/PUT /movie_tickets/1 or /movie_tickets/1.json
      def update
        respond_to do |format|
          if @location.update(location_params)
            format.html { redirect_to location_url(@location), notice: "location was successfully updated." }
            format.json { render :show, status: :ok, location: @location }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @location.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # DELETE /movie_tickets/1 or /movie_tickets/1.json
      def destroy
        @location.destroy
    
        respond_to do |format|
          format.html { redirect_to location_url, notice: "location was successfully destroyed." }
          format.json { head :no_content }
        end
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_location
          @location = Location.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def location_params
          params.require(:location).permit(:name)
        end
end
    
