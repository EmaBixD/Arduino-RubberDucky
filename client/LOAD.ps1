# Ottieni la directory dello script corrente
$scriptDir = $PSScriptRoot

Start-Process -FilePath "$scriptDir\winvnc.exe" -ArgumentList "-run"

# Attende 1 secondo
Start-Sleep -Seconds 1

# Connettiti al server
Start-Process -FilePath "$scriptDir\winvnc.exe" -ArgumentList "-connect 192.168.1.44::4444"
