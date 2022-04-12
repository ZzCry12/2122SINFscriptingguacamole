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
    echo "ERROR to pass a parameter."
    echo "Reminder that all required files will be copied to /home/\$USER/backup/project_backup."
    echo "USAGE: ./backup.sh LOGFILE DIRECTORY-TO-BACKUP"
    exit 1;
  fi


  LOG=$1
  BACKUP_FROM=$2

  function ctrlc {
    rm -rf /home/$USER/backup/project_backup
    rm -f $LOG
    echo "Received Ctrl+C"
    exit 1
  }

  trap ctrlc SIGINT

  echo "Timestamp before work is done $(date +"%D %T")" >> $LOG

  echo "Creating backup directory" >> $LOG
  if ! (mkdir /home/$USER/backup/project_backup 2> /dev/null)
  then
    echo "Directory already existed." >> $LOG
  fi

  echo "Copying Files" >> $LOG
  cp -v $BACKUP_FROM/* /home/$USER/backup/project_backup/ >> $LOG
  echo "Finished Copying Files" >> $LOG
  echo "Timestamp after work is done $(date +"%D %T")" >> $LOG
    ;;

    * )
      echo "sorry, wong option"
      exit 1
      ;;

    esac

    exit 0
