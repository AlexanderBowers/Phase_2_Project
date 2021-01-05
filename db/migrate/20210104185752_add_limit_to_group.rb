class AddLimitToGroup < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :limit, :integer
  end
end
