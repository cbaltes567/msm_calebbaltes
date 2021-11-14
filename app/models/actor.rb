class Actor < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :roles,
             :class_name => "Character",
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :roles,
             :source => :movie

  # Validations

  # Scopes

  def to_s
    dob
  end

end
