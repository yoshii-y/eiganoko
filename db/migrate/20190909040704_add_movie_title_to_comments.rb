class AddMovieTitleToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :movie_title, :string
  end
end
