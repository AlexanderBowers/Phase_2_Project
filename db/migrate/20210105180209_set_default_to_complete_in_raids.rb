class SetDefaultToCompleteInRaids < ActiveRecord::Migration[6.1]
  def change
    change_column :raids, :completed, :boolean, :default => false
  end
end
