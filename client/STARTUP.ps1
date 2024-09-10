$documentsPath = [System.Environment]::GetFolderPath('MyDocuments')

$githubUrl = "https://raw.githubusercontent.com/<tuo-username>/<nome-repo>/main/altroFile.ps1"

$destinationFile = "$documentsPath\altroFile.ps1"

Invoke-WebRequest -Uri $githubUrl -OutFile $destinationFile

powershell -ExecutionPolicy Bypass -File $destinationFile
