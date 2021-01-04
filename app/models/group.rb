class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups

    has_many :group_raids
    has_many :raids, through: :group_raids

    has_many :user_group_roles
    has_many :roles, through: :user_group_roles

end
