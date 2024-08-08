#!/bin/bash

start="game/start"
mkdir -p $start
echo "		WELCOME TO THE LINUX PATH-BASED ADVENTURE GAME!!
			YOUR JOURNEY BEGINS NOW!
Currently you are at your home in Lake Tahoe, California. The location of your home is very desolate with very little civilization in sight.This emptiness around you encourages you to travel outside of your regular boundaries and explore the great unknown.There are three different paths to travel on, type "ls" to view the list of paths available to travel down.The ls-command is used to list all of the contents of a directory. To travel along a path, type "cd" followed by the path you want to travel down. The cd-command allows you to change to another directory.If you ever forget your current location, type "pwd". The pwd-command prints the current working directory (pathname)." > $start/.desc.txt

# Backroad
DIR="$start/Backroad/Friends_House"
mkdir -p ${DIR}/{Bedroom,Workshop,Table}
spotF1="${DIR}/Bedroom"
spotF2="${DIR}/Workshop"
spotF3="${DIR}/Table"
touch ${spotF1}/{TV,Fish_Bowl,Lights,Bookshelf}
touch ${spotF2}/{Cars,Chair,Scooter}
touch ${spotF3}/{Utensils,Food,Drinks}
mkdir -p ${DIR}/.Hidden_Room   #FIX SO IT ONLY DISPLAYS IF THE BOOKSHELF IS iMOVED OUT OF THE WAY

echo "You chose to travel down the backroad path! You keep trudging along down this path until you come to a clearing where in the distance you can see your best friend Justin's house. Might as well go give him a visit, cd to his house to go visit him." > $start/Backroad/.desc.txt

# Highway
DIR="$start/Highway/Abandoned_Building"
mkdir -p ${DIR}/{Kitchen,Desk,Conference_Room}
SpotA1="${DIR}/Kitchen"
SpotA2="${DIR}/Desk"
SpotA3="${DIR}/Conference_Room"
touch ${SpotA1}/{Bevi_Station,Coffee_Machine,Fridge}
touch ${SpotA2}/{Monitors,Papers,Computers}
touch ${SpotA3}/{Camera,Chairs,Notes}


#Dirtpath
DIR="$start/Dirtpath/Pool_Area"
mkdir -p ${DIR}/{Pool,Table,Tiki_Hut}
SpotP1="${DIR}/Pool"
SpotP2="${DIR}/Table"
SpotP3="${DIR}/Tiki_Hut"
touch ${SpotP1}/{Float,Towels,Pool_Rings}
touch ${SpotP2}/{Watermelon,Plates,Bluetooth_Speaker}
touch ${SpotP3}/{Mini_Fridge,Stools,Drinks}

