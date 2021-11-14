class Actor < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :class_name => "Character",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dob
  end

end
