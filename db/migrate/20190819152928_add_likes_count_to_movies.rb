class AddLikesCountToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :likes_counter, :integer
  end
end
