class AddFinishedToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :finished, :boolean
  end
end
