FactoryBot.define do
  factory :payment do
    user_id { 1 }
    movie_ticket_id { 1 }
    status { "MyString" }
    payment_details { "MyString" }
    amount_cents { 1 }
  end
end
