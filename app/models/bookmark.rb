class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, lenght: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: list_id, message: "Déjà inclus dans la liste." }
end
