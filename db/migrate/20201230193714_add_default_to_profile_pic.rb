class AddDefaultToProfilePic < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :profile_pic, :string, default: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg"
  end
end
