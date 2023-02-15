json.extract! movie_ticket, :id, :movie_name, :from, :to, :place, :date, :image, :location_id, :created_at, :updated_at
json.url movie_ticket_url(movie_ticket, format: :json)
