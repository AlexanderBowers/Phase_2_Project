class Role < ApplicationRecord
   has_many :user_group_roles
   has_many :users, through: :user_group_roles
   has_many :groups, through: :user_group_roles


end
