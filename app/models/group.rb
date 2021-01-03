class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups
    has_many :group_raids
    has_many :raids, through: :group_raids
end
