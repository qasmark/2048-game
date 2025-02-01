ECHO "DANGER!! It will switch off all your active containers"
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i