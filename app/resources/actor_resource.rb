class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dob, :date
  attribute :name, :string
  attribute :image, :string
  attribute :bio, :string

  # Direct associations

  has_many   :roles,
             resource: CharacterResource

  # Indirect associations

end
