class CreateRaids < ActiveRecord::Migration[6.1]
  def change
    create_table :raids do |t|
      t.string :name
      t.string :reward_item_1
      t.string :reward_item_2

      t.timestamps
    end
  end
end
