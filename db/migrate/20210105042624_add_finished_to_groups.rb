class AddFinishedToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :finished, :boolean, :default => false
  end
end
