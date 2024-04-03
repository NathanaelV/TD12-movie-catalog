class RemoveTitlesFromMovies < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :titles, :string
  end
end
