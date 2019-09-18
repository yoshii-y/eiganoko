class RemoveLikesCounterFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :likes_counter, :integer
  end
end
