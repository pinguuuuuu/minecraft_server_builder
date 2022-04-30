@echo off
echo Telechargement en cours . . .
title Server downloader
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn.getbukkit.org/spigot/spigot-1.8-R0.1-SNAPSHOT-latest.jar', 'server.jar')"
echo Telechargement fini !
echo java -jar server.jar > start.bat
echo Creation du fichier de lancement
start start.bat
timeout 10
powershell -Command "(gc eula.txt) -replace 'false', 'true' | Out-File -encoding ASCII eula.txt"
echo Lancement prêt
start start.bat
pause