class Payment < ApplicationRecord 
  belongs_to :user
  belongs_to :movie_ticket    
  belongs_to :seat

  def process 
  end

  # def share_payment
  #   @payment = Payment.find(params[:id])
  #   recipient_email = params[:recipient_email]
  #     PaymentMailer.share_payment(@payment, recipient_email).deliver_now
  #     redirect_to payments_path, notice: "Payment details sent to #{recipient_email} successfully."
  # end
end
