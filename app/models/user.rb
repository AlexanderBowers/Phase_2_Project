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

    def total_raids
        total = 0
        self.groups.all.each do |g|
            if g.finished == true
                total += g.raids.length
            end
        end
        "#{self.username} has participated in #{total} raids."
    end

    def total_groups
        "#{self.username} has participated in #{self.groups.all.length} groups."
    end

    def party_leads
        total = 0
        self.groups.all.each do |g|
            if g.finished == true && g.party_leader == self
                total += 1
            end
        end
        "#{self.username} has been the party leader of #{total} groups."
    end

    def role_count(role_id, role)
        total = 0
        groups = self.user_group_roles.all.where(role_id: role_id)
        groups.each do |g|
            if g.group.finished == true
                total += 1
            end
        end
        "#{self.username} has been a #{role} #{total} time(s)."
    end

    def tank_count
        self.role_count(1, "tank")
    end

    def dps_count
       self.role_count(2, "dps")
    end

    def healer_count
        self.role_count(3, "healer")
    end

end
