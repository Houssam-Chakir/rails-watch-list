class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy 
  validates :name, uniqueness: true, presence: true, length: { minimum: 5 }
end
