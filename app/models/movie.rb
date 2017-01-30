class Movie < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope: :release_date,
  message: "should not have two movies with same name and release_date"}

  belongs_to :director, class_name: "Director", foreign_key: "director_id", optional: true
  has_and_belongs_to_many :actors, association_foreign_key: 'actor_id', join_table: 'actors_movies'

  has_many :classifications
  has_many :users, through: :classifications

  def average_score
    score = classifications.average(:score)
    if score.nil?
      return nil
    else
      return score.to_f
    end
  end
end
