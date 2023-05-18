#!/bin/bash

echo "Waiting 30 seconds before running the commands..."
sleep 30
echo "Trying to running the commands..."

# Run the script to restore the database
/opt/mssql-tools/bin/sqlcmd -U sa -P password1234! -b -Q 'RESTORE DATABASE AdventureWorksDW2017 FROM DISK = "/var/opt/mssql/backup/AdventureWorksDW2017.bak" WITH MOVE "AdventureWorksDW2017" to "/var/opt/mssql/data/AdventureWorksDW2017.mdf", MOVE "AdventureWorksDW2017_Log" to "/var/opt/mssql/data/AdventureWorksDW2017_log.ldf"' -o ./sql_up_out.txt

if [ $? -eq 0 ]; then
  echo "AdventureWorksDW2017 restore completed."
else
  echo "AdventureWorksDW2017 restore failed. Details:"
fi

cat -n ./sql_up_out.txt