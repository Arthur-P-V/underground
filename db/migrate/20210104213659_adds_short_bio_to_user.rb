class AddsShortBioToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bio, :string, limit: 500
  end
end
