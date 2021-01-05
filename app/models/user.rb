class User < ApplicationRecord
    has_secure_password
    validates_presence_of :username
    validates_uniqueness_of :username

    has_many :user_groups
    has_many :groups, through: :user_groups
    has_many :user_group_roles
    has_many :roles, through: :user_group_roles

    serialize :inventory, Array

    def add_to_inventory(item)
        self.inventory << item
        self.save
    end

    def remove_from_inventory(item)
        self.inventory.delete(item)
        self.save
    end
end
