class RemoveTitleFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :title
    remove_column :movies, :introduction
    remove_column :movies, :cast
    


  end
end
