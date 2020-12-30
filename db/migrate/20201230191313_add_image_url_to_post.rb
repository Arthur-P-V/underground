class AddImageUrlToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :image_url, :string
  end
end
