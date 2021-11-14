class Director < ApplicationRecord
  mount_uploader :picture, PictureUploader

  # Direct associations

  has_many   :movies,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
