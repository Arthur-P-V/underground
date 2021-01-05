class AddsFavBandToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fav_band, :string
  end
end
