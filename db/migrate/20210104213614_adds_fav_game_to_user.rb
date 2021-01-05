class AddsFavGameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fav_game, :string
  end
end
