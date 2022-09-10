class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 5 }
  validates :list_id, uniqueness: { scope: :movie_id }, presence: true
end
