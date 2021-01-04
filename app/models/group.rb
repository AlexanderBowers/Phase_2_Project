class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups

    has_many :group_raids
    has_many :raids, through: :group_raids

    has_many :user_group_roles
    has_many :roles, through: :user_group_roles


    def party_leader
        self.user_groups.all[0].user.username
    end

    def party
        party = {tank: [], dps: [], healer: []}
        self.user_group_roles.each do |r|
            if r.role_id == 1
                byebug
                party[:tank] << r.user.username.to_s
            elsif r.role_id == 2
                byebug
                party[:dps] << r.user.username.to_s
            elsif r.role_id == 3
                byebug
                party[:healer] << r.user.username.to_s 
            end
        end
        party


    end

end
