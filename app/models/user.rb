class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :reviews,
             dependent: :destroy

  # Indirect associations

  has_many   :bookmarked_movies,
             through: :bookmarks,
             source: :movie

  has_many   :movie_reviews,
             through: :reviews,
             source: :movie

  # Validations

  # Scopes

  def to_s
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
