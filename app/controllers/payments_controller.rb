class PaymentsController < ApplicationController
      before_action :set_payment, only: %i[ show edit update destroy ]

      # GET /super_users or /super_users.json
      def index
        @payments = Payment.all
      end
    
      # GET /super_users/1 or /super_users/1.json
      def show
        @payment = Payment.find(params[:id])
      end
    
      # GET /super_users/new
      def new
        @payment = Payment.new
      end
    
      # GET /super_users/1/edit
      def edit
        @payment = Payment.find(params[:id])
      end

      def share_payment
        @payments = Payment.find(params[:id])
        # recipient_email = params[:recipient_email]
        recipient_email = "ramyalatha0007@gmail.com"
        PaymentMailer.share_payment(@payments, recipient_email).deliver_now
        redirect_to payments_path, notice: " details sent to #{recipient_email} successfully."
      end
    
      # POST /super_users or /super_users.json
      def create
        @payment = Payment.new(payment_params)
        @payment.code = generate_code
    
          if @payment.save
            redirect_to payments_path, notice: "Payment Successful." 
         
          else
            render :new, status: :unprocessable_entity 
          end
      end
    
      # PATCH/PUT /super_users/1 or /super_users/1.json
      def update
        @payment = Payment.find(params[:id])
        respond_to do |format|
          if @payment.update(payment_params)
            format.html { redirect_to payment_url(@payment), notice: "Super user was successfully updated." }
            format.json { render :show, status: :ok, location: @payment }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @payment.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # DELETE /super_users/1 or /super_users/1.json
      def destroy
        @payment = Payment.find(params[:id])
        @payment.destroy
    
        respond_to do |format|
          format.html { redirect_to payments_url, notice: "payment was successfully destroyed." }
          format.json { head :no_content }
        end
      end
        
      private

      def generate_code
        loop do
          key = SecureRandom.hex(8) # Generate an 8-character hexadecimal code
          return key unless Payment.exists?(code: key ) # Check if code is unique
        end
      end
        # Use callbacks to share common setup or constraints between actions.
        def set_payment
          @payment = Payment.find(params[:id])
        end

    
        # Only allow a list of trusted parameters through.
        def payment_params
          params.require(:payment).permit(:total_amount, :user_id, :movie_ticket_id,:seat_id, :code)
        end
end
