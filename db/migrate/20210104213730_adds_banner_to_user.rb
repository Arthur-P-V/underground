class AddsBannerToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :banner, :string, default: "https://images.unsplash.com/photo-1600697230088-4992c83b2804?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
  end
end
