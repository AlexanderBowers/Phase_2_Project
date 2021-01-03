class Raid < ApplicationRecord
    has_many :group_raids
    has_many :groups, through: :group_raids
end
