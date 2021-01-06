class AddImagesAndDescriptionsToRaids < ActiveRecord::Migration[6.1]
  def change
    add_column :raids, :image, :text
    add_column :raids, :description, :text
  end
end
