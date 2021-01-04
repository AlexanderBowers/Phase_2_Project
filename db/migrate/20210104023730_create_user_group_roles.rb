class CreateUserGroupRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_group_roles do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :role_id

      t.timestamps
    end
  end
end
