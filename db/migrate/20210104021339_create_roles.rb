class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
