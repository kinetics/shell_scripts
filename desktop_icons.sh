###########################################
#!/bin/bash                               #
# Simple script to generate desktop icons #
# Author: Bryan Oliver                    #
# License: MIT                            #
###########################################

#!/bin/bash
FILE="$1.desktop"
FILE_LOCATION="/usr/share/applications/$1.desktop"


if [ -f "$FILE_LOCATION" ]
then

  # copies the application file to the desktop and makes executable
  echo "Creating desktop icon for program $FILE"
  sudo cp /usr/share/applications/$FILE ~/Desktop
  sudo chmod +x ~/Desktop/$FILE
  echo "Finished. Exiting..."

else

  # handle errors
  echo " "
  echo "----- ERROR! $1.desktop does not exist!  -----"
  echo "----- Please check /usr/share/applications -----"
  echo " "

  # qualify application name to lowercase
  NAME_LC=$(echo "$1" | tr '[:upper:]' '[:lower:]') 
  
  # Generate possible filepath options
  COMPREPLYTWO=( $(compgen -f -- "/usr/share/applications/$NAME_LC") )
  echo " "
  echo "-- Did you mean to assign one of the following application/s? ----"
  
  OPTIONS_COUNT=0
  for VARIABLE in $COMPREPLYTWO
    do
      OPTIONS_COUNT=$((OPTIONS_COUNT+1))
      echo "$OPTIONS_COUNT: $VARIABLE"
    done
  echo " "
fi




