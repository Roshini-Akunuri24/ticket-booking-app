FactoryBot.define do
  factory :seat do
    number { 10 }
    booked { false }
    price {150.0}
    movie_ticket_id { 9 }
  end
end
