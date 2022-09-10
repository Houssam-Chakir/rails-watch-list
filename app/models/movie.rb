class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true, length: { minimum: 5 }
  validates :overview, length: { minimum: 5 }
end
