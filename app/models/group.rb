class Group < ApplicationRecord
    validates :limit, numericality: { only_integer: true }
    validates_presence_of :name
    validates_uniqueness_of :name

    
    has_many :user_groups
    has_many :users, through: :user_groups

    has_many :group_raids
    has_many :raids, through: :group_raids

    has_many :user_group_roles
    has_many :roles, through: :user_group_roles


    def party_leader
        @party_leader = self.user_groups.all[0].user
    end

    def party
        party = {tank: [], dps: [], healer: []}
        self.user_group_roles.each do |r|
            if r.role_id == 1
                party[:tank] << r.user.username.to_s
            elsif r.role_id == 2
                party[:dps] << r.user.username.to_s
            elsif r.role_id == 3
                party[:healer] << r.user.username.to_s 
            end
        end
        party
    end

    def party_size 
        @party = []
        self.user_group_roles.each do |r|
            @party << r.user
        end
       @party
    end

    def available_spots
        "There are currently #{self.party_size.length} members.\n #{self.limit - self.party_size.length} spots are available."
    end

    def finish
        self.finished = true
        
        self.users.each do |user|
            user.add_to_inventory(self.raids.reward_item_1)
            user.add_to_inventory(self.raids.reward_item_1)
        end

        self.save
    end

    def wipe(user_id)
        UserGroup.where(user_id: user_id, group_id: self.id).destroy_all
        UserGroupRole.where(group_id: self.id).destroy_all
        Group.where(id: self.id).destroy_all
    end
end
