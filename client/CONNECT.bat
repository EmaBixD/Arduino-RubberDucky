@echo off
start winvnc.exe -run
timeout /t 1 >nul
start winvnc.exe - connect 192.168.1.44::4444