class CreateGroupRaids < ActiveRecord::Migration[6.1]
  def change
    create_table :group_raids do |t|
      t.integer :group_id
      t.integer :raid_id

      t.timestamps
    end
  end
end
