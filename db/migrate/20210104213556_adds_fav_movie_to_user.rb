class AddsFavMovieToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fav_movie, :string
  end
end
