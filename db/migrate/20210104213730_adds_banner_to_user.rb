class AddsBannerToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :banner, :string
  end
end
