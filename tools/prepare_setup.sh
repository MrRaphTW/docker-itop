#!/bin/bash

if [[ -f /var/www/html/web/conf/production/config-itop.php ]]
then
  chmod +w /var/www/html/web/conf/production/config-itop.php
  if [[ $? ]]
  then
        echo "Successfully prepared iTop to re-run setup."
  else
        echo "There was an issue while preparing iTop to rerun its setup."
        echo "> Please, check you configuration file."
  fi
else
  echo "iTop configuration file isn't here."
  echo "Did you ever run setup ?"
fi
