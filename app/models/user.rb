class User < ApplicationRecord
    has_secure_password
    validates_presence_of :username
    validates_uniqueness_of :username

    has_many :user_groups
    has_many :groups, through: :user_groups
end
