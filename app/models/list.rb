class List < ApplicationRecord
  has_many :bookmarks, dependant: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependant: :destroy

  validates :name, uniqueness: true, presence: true
end
