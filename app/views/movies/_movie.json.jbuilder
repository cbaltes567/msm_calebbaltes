json.extract! movie, :id, :title, :year, :description, :director_id, :duration,
              :image, :created_at, :updated_at
json.url movie_url(movie, format: :json)
