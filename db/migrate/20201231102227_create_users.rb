class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :pix_url
      t.string :email
      t.string :discord_id
      t.string :steam_id
      t.string :user_desc
      t.string :password_digest

      t.timestamps
    end
  end
end
