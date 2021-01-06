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

    def tanks
        total = 0
        Group.all.each do |g|
            if g.finished == true
                total += g.party[:tank].length
            end
        end
        "Out of all groups who have finished, there have been #{total} people as tanks."
    end

    def dps
        total = 0
        Group.all.each do |g|
            if g.finished == true
                total += g.party[:dps].length
            end
        end
        "Out of all groups who have finished, there have been #{total} people as dps."
    end

    def healers
        total = 0
        Group.all.each do |g|
            if g.finished == true
                total += g.party[:healer].length
            end
        end
        "Out of all groups who have finished, there have been #{total} people as healer."
    end



   

    



end

