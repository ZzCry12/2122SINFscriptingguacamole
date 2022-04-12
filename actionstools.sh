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
    ;;

  2 )
    #Analyse a directory
    #Check permissions
    # 
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
    exit 255;
  fi


  LOG=$1
  BACKUP_FROM=$2

  function ctrlc {
    rm -rf /home/$USER/backup/project_backup
    rm -f $LOG
    echo "Received Ctrl+C"
    exit 255
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
