class Analytic < ApplicationRecord


    def groups
        "Current amount of groups made: #{Group.all.length}"
    end

    def users
        "Current amount of users made: #{User.all.length}"
    end

    def raids
        "Current amount of raids made: #{Raid.all.length}"
    end

    def total_raids
        total = 0
        Group.all.each do |g|
            if g.finished == true
                total += g.raids.length
            end
        end
        "Current amount of raids finished: #{total}"
    end

    def roles
        "There are currently #{UserGroupRole.all.length} roles assigned to groups"
    end

    def role_count(role_key, role)
        total = 0
        Group.all.each do |g|
            if g.finished == true
                total += g.party[role_key].length
            end
        end
        "Out of all groups who have finished, there have been #{total} people as #{role}."
    end

    def tanks
        self.role_count(:tank, "tank")
    end

    def dps
        self.role_count(:dps, "dps")
    end

    def healers
        self.role_count(:healer, "healer")
    end

end

