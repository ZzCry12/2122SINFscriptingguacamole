#!/bin/bash
# Simple script to launch several tools from the command line

# Include functions from other file(s)
source toolsmenu.sh
# ...

# Main body
Action=$(simple_menu)
case $Action
  1 )
    #launch antivirus tools
    # ...
    echo "Sorry, we're working on it"
    exit 1
    ;;

  2 )
    #Analyse a directory
    #Check permissions
    ##### Team Rocket
    ##### Dario Rata Script
    
#
Dir=$1
ls $Dir -1 > buffer.tmp
while read Element
do
    [ -d "$Dir/$Element" ] && echo "$Element is a Directoy"
    [ -f "$Dir/$Element" ] && echo "$Element is a Filesystem"
    [ -r "$Dir/$Element" ] && echo "You have writing permissions" || "You don't have writing permission"
    
done < buffer.tmp

rm buffer.tmp

exit 1

    ;;
  3 )
    #Make a back up with tar
    #!/bin/bash
##### Script by vicen
##### Team Rocket

  if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Reminder that all required files will be copied to where u want"
    read BACKUP_FROM

    fi
    echo "where you want to copy the files"
    read destino
  LOG=$1
  BACKUP_FROM=$2


  echo "Timestamp before work is done $(date +"%D %T")"

  echo "Creating backup directory"
  if ! (mkdir /home/$USER/backup/project_backup 2> /dev/null)
  then
    echo "Directory already existed."
  fi

  echo "Copying Files"
  tar czf $destino/$date $BACKUP_FROM
  echo "Finished Copying Files"
  echo "Timestamp after work is done $(date +"%D %T")"

    ;;

    * )
      echo "sorry, wong option"
      exit 1
      ;;

    esac

    exit 0
