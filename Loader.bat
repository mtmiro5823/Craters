rem sets the PGADMIN password
set PGPASSWORD=geografio

rem automatically assigns the appropriate directory

rem run psql
"C:\Program Files\PostgreSQL\9.6\bin\psql.exe" -U postgres -f craters.sql  
"C:\Program Files\PostgreSQL\9.6\bin\psql.exe" -U postgres -f IAU2000.sql


