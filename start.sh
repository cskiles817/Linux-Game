#!/bin/bash
# vim: set ai ts=4 sw=4 et :

#MAIN SCRIPT:

clear
toilet -f standard "CONNORS CRAZY" -F metal
toilet -f standard "CREATION" -F metal

echo "WELCOME TO THE LINUX PATH-BASED ADVENTURE GAME!!
        YOUR JOURNEY BEGINS NOW!
If you ever forget your current location, type "pwd". The pwd-command prints the current working directory (pathname). There are three different paths to travel on, type "ls" to view the list of paths available to travel down. The ls-command is used to list all of the contents of a directory. To travel along a path, type "cd" followed by the path you want to travel down. The cd-command allows you to change to another directory."


#___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________


# Initialize current location
ROOT=game/start
REAL_PATH=$(pwd)

current_location() {
    CURRENT_LOCATION=$(pwd | sed "s|$REAL_PATH/||g")
    echo $CURRENT_LOCATION
}

# Function to display welcome message
welcome() {
    cd $ROOT
}


# Function to handle user commands
handle_command() {
    local cmd="${user_input[0]}"
    local arg="${user_input[1]}"
    case "$cmd" in
        cd)
            if [ -d "$arg" ]; then
                local  path=$(realpath ${REAL_PATH}/$(current_location)/$arg)
              if [[ ! $path =~ game/start ]]; then
                    cd $REAL_PATH/$ROOT
                    
                else
                    cd "$arg"
                    CURRENT_LOCATION=current_location
                    if [ -e .image.txt ]; then
                        cat .image.txt
                    fi
                    if [ -e .desc.txt ]; then
                        cat .desc.txt
                    fi 
             fi
        else
                echo "Directory not found."
            fi
            ;;
         ls)
            echo ""
            echo -e "\e[4mLocations:\e[0m"
            find . -maxdepth 1 -type d | tail -n +2 | sed 's|./||'
            echo " "
            echo -e "\e[4mItems:\e[0m" 
            find . -maxdepth 1 -type f | tail -n +2 | sed 's|./||'| egrep -v "^\."
            echo " "
            
      ;;
         pwd)
            pwd current_location
                                             #NEEDS FIXED, PROVIDES PICTURE/SAYING FOR EVERY DIRECTORY WHEN PWD IS USED
            echo  '                         
                          (    )
                           (    )
                          (    )
                            )  )
                           (  (                  /\
                            (_)                 /  \  /\
                    ________[_]________      /\/    \/  \
           /\      /\        ______    \    /   /\/\  /\/\
          /  \    //_\       \    /\    \  /\/\/    \/    \
   /\    / /\/\  //___\       \__/  \    \/
  /  \  /\/    \//_____\       \ |[]|     \
 /\/\/\/       //_______\       \|__|      \
/      \      /XXXXXXXXXX\                  \
        \    /_I_II  I__I_\__________________\
               I_I|  I__I_____[]_|_[]_____I
               I_II  I__I_____[]_|_[]_____I
               I II__I  I     XXXXXXX     I
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

	 echo "Currently you are at your home in Lake Tahoe, California. Your home is in a very desolate area with very little civilization in sight. This emptiness around you encourages you to travel outside of your regular boundaries and explore the great unknown. Travel down one of the paths, and explore your surroundings."
	   ;;
        cat)
            if [ -f "$CURRENT_LOCATION/$arg" ]; then
                cat "$CURRENT_LOCATION/$arg"
            else
                echo "File not found."
            fi
            ;;
        less)
            less
            ;;

        help)
            
            echo " "
            echo -e "\e[4mHELP MENU:\e[0m"
            echo "The pwd-command prints the current working directory (pathname)."
            echo "The ls-command is used to list all of the contents of a directory."
            echo "The cd-command followed by a directory name allows you to change to that directory."
            echo "The cat-command followed by a filename will show the contents of that file."
            echo "The less-command followed by a filename allows you to interact with items."
            echo "The exit-command will exit you out of the game."
            echo " "
            ;;

        clear)
            clear
            ;;
        exit)
            echo "Exiting the game. Hopefully you enjoyed!!"
            exit 0
            ;;
  *)
      ;;
    esac
}

# Main game loop
welcome
handle_command
while true; do
    echo -n "$(current_location)$ "
    read -a user_input
    handle_command "${user_input[@]}"
done


