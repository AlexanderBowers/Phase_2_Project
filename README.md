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




What's been done as of 1/3/2021

Users can create accounts
Users can log into accounts
Users can see a list of existing groups
Users can create a group
Users can join an existing group
Users can create raids
Users can attach raids to groups
Users can choose roles

What needs to be done:

Party lead able to remove people from group
User can leave a group
If party leader leaves, delete group
Party limit for group***
Optional role caps for group***
Show taken and open roles on group's page***
Adding drops to raids; showing drops on users profiles
Analytics page

MORE METHODS ON MODELS

if a raid's party is full,
give party leader ability to press 'finish' on group page
if 'finished'
show name of raid and a counter on user's page.
Remove raid from groups#index

leaderboard for raid completions?


