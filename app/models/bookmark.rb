class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 5 }
  validates :movie_id, uniqueness: { scope: :list_id }, presence: true
end
