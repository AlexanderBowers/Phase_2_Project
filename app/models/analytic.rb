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

    def roles
        "There are currently #{UserGroupRole.all.length} roles assigned to groups"
    end



end
# analytics
# counter for groups made
# counter for users made
# counter for raids made
# counter for raid finished most often
# raid with most tanks
# raid with most dps
# raid with most healers
# counter for user_group_roles
