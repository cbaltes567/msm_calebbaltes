json.extract! director, :id, :name, :dob, :bio, :picture, :created_at,
              :updated_at
json.url director_url(director, format: :json)
