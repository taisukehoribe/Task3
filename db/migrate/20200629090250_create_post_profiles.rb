class CreatePostProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :post_profiles do |t|
      t.text :introduction
      t.integer :user_id
      t.string :profile_image_id

      t.timestamps
    end
  end
end
