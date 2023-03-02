FactoryBot.define do
  factory :movie_ticket do
    movie_name  {"Monalisa"}
    image { "/path/to/something.jpg"}
    date {Date.today}
    location_id {1}
    show_id {1}
    theatre_id {1}
  end
end
