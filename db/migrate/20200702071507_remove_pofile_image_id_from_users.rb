class RemovePofileImageIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :pofile_image_id, :string
    remove_column :users, :string
  end
end
