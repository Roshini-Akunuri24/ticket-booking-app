FactoryBot.define do
  factory :booked_ticket do
    movie_ticket_id { 1 }
    show_id { 1 }
    price_per_ticket { "9.99" }
    number_of_tickets { 1 }
    user_id { 1 }
  end
end
