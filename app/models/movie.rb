class Movie < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope: :release_date,
  message: "should not have two movies with same name and release_date"}
end
