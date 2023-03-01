FactoryBot.define do
  factory :seat do
    number { 1 }
    show_id { 1 }
    booked { false }
    price {99.9}
  end
end
