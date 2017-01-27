class AddDirectorToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :director_id, :integer
  end
end
