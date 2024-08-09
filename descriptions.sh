#!/bin/bash

#BEGINNING:
clear
echo "		WELCOME TO THE LINUX PATH-BASED ADVENTURE GAME!!
			YOUR JOURNEY BEGINS NOW!
Currently you are at your home in Lake Tahoe, California. The location of your home is very desolate with very little civilization in sight.This emptiness around you encourages you to travel outside of your regular boundaries and explore the great unknown.There are three different paths to travel on, type "ls" to view the list of paths available to travel down.The ls-command is used to list all of the contents of a directory. To travel along a path, type "cd" followed by the path you want to travel down. The cd-command allows you to change to another directory.If you ever forget your current location, type "pwd". The pwd-command prints the current working directory (pathname)." >game/start/.desc.txt



#___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________


#Wooded PATH: 

echo "You chose to travel down the backroad path! You keep trudging along down this path until you come to a clearing where in the distance you can see your best friend Justin's house. Might as well go give him a visit, cd to his house to go visit him." > game/start/Backroad/.desc.txt

echo "You have arrived to Justin's house, but you can't seem to find Justin. There are three places that he could be. Travel into each to figure out where he is." >game/start/Backroad/Friends_House/.desc.txt

echo "You have moved into Justin's bedroom, look around in his room to see if you can find any clues to figure out where he is." >game/start/Backroad/Friends_House/Bedroom/.desc.txt

echo "You have moved into Justin's workshop, look around in the shop to see if you can find any clues to figure out where he is." >game/start/Backroad/Friends_House/Workshop/.desc.txt

echo "You have moved to Justins's dinner table, look around the table to see if you can find any clues to figure out where he is." >game/start/Backroad/Friends_House/Table/.desc.txt
#____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________

#HIDDEN ROOM IN JUSTIN'S BEDROOM:

echo "In the darkness of the hidden room you finally find Justin stocking the room with food rations, weapons, water, etc.. You ask him what he is stocking up for and he responds with a very unexpected answer by saying 'The Zombie Apocolypse'" >game/start/Backroad/Friends_House/Bedroom/Hidden_Room/.desc.txt

#____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________

#Gravel  PATH:

echo "You chose to travel down the highway! You keep traveling down until you come to a large building that is abandoned. Type the correct command followed by the destination (Building) so you can travel into the building. ">game/start/Highway/.desc.txt

echo "You have arrived to the front of the large building, and surprisingly the doors aren't locked. Why not travel into an abandoned, dark, and run-down building. After a few minutes of exploration you come to find that most rooms are either locked, or destroyed except. But there are three rooms that you can explore. Use the correct command to list the places in the building that are available to explore.">game/start/Highway/Abandoned_Building/.desc.txt

echo "You have moved into the buildings main kitchen. Look around and explore to discover whats in the kitchen. Maybe throughout the kitchen you can find clues to get  an idea as to why the building is abandoned.">game/start/Highway/Abandoned_Building/Kitchen/.desc.txt

echo "You have moved into the buildings business sector. In this room you see a good 20-30 desks. Maybe exploring through the desks you will be able to discover clues as to why the building was abandoned.">game/start/Highway/Abandoned_Building/Desk/.desc.txt

echo "You have moved into the buildings abandoned conference room. In this room you see a multitude of items that may provide some clues as to why the building was abandoned." > game/start/Highway/Abandoned_Building/Conference_Room/.desc.txt
#____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________

# DIRTPATH:

echo "You chose to travel down the dirtpath! You keep traveling down until you see in the distance an enclosed pool area. You decide that you want to check it out. Type the correct command followed by the destination (Pool_Area) so you can explore the pool area."> game/start/Dirtpath/.desc.txt

echo "You have successful entered the enclosed pool area. Why not take a dip in the pool afterall it is a hot, and humid day. After looking around you come to the conclusion that someone has been in this pool area recently. Use the correct command to list the avalaible places within the pool area to see more evidence of civilation."> game/start/Dirtpath/Pool_Area/.desc.txt

echo "You have moved to the actual pool, and you see that there are multiple things in the pool that show signs that someone was there recently. Maybe throughout swimming in the pool you can examine the stuff in the pool and get an idea as to when someone was last here.">game/start/Dirtpath/Pool_Area/Pool/.desc.txt

echo "You have moved to the table, and you see various signs of civilization. Maybe looking at the stuff on the table will lead you to a conclusion as to when someone was here.">game/start/Dirtpath/Pool_Area/Table/.desc.txt

echo "You have moved to the tiki hut, and after a few minutes of exploration you see multiple items that may be able to provide you a timeline as to when someone was last here.">game/start/Dirtpath/Pool_Area/Tiki_Hut/.desc.txt
#__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________


