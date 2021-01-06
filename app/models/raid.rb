class Raid < ApplicationRecord
    validates_presence_of :name
    validates_uniqueness_of :name
    validates_presence_of :image
    validates_presence_of :description
    
    has_many :group_raids
    has_many :groups, through: :group_raids

end
