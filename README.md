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