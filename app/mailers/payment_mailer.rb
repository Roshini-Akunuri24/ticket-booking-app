class PaymentMailer < ApplicationMailer
    default from: "ankunuri.roshini@gmail.com"
    def share_payment(payment, recipient_email)
        @payment = payment
        mail to: recipient_email, subject: "BookMyTicket"
      end
  end