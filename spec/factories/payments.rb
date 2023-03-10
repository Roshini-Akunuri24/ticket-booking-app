FactoryBot.define do
  factory :payment do
    user_id { 1 }
    movie_ticket_id { 1 }
    code { "0d50e6c1a99ee5d8" }
    seat_id { 1 }
    total_amount { 99.9 }
  end
end
