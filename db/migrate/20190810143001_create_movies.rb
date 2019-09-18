class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :introduction
      t.string :cast


      t.integer :star

      t.timestamps
    end
  end
end
