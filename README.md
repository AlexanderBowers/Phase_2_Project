Flatiron Phase 2 project

~~Looking For Raid~~
by Riley Iverson
and Alexander Bowers

	Raid
	 v
   | raid/group
	 ^
User>--<Group--<Role			leader id on group -> user_id of first user
     ^
   user/group

user has many groups
groups have many users
groups have many roles
roles belong to a group
users have many roles through groups
group can have many raids


Create a User
User can look for groups based on preference
User can choose/create a group
User can choose available roles in a group (validation)
User can choose which raid(s) to tackle in a group
As party lead, User can remove other users from a group


Using dummy data to create raids
Roles would be a dropdown;
user can choose how many of each role they want for a raid
User has notification on their show page when a group is full 
User can choose to leave groups
Groups where party leader leaves are disbanded

stretch goal: using faker to assign drops to a raid;
 user can display their drops on their page.

roles


bare minimum: user can login and see their groups
user can create groups
if raid group is finished, add +1 to raid count on user
user with most raids
leaderboard




What's been done as of 1/5/2021

Users can create accounts
Users can log into accounts
Users can see a list of existing groups
Users can create a group
Users can join an existing group
Users can create raids
Users can attach raids to groups
Users can choose roles
User cannot join group if it is full
User can leave a group
Party lead able to remove people from group
Party lead can 'finish' a group
Party lead can destroy a group
User can logout
Groups that are full do not appear under 'open groups'
Analytics page



what needs to be done:

how many raids in a group

total raids being run - add up all raids in all groups


users track how many raids they've done
users track how many groups they've been in and finished

how many times a user has been party lead and finished a group
how many times a user has done tank
has done dps
has done healer



to do for today

alex
party leader can delete group


riley
add groups to user profile 
add drops to profile


