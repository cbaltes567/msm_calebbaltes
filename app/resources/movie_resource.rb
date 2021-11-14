class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :year, :string
  attribute :description, :string
  attribute :director_id, :integer
  attribute :duration, :integer
  attribute :image, :string

  # Direct associations

  has_many   :reviews

  has_many   :bookmarks

  has_many   :characters

  # Indirect associations

end
