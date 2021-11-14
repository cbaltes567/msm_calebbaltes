class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :stars, :integer
  attribute :movie_id, :integer
  attribute :user_id, :integer
  attribute :review_description, :string

  # Direct associations

  belongs_to :movie

  belongs_to :user

  # Indirect associations

end
