# RUNNING SCRIPTS REMOTELY

Enable-PSRemoting -Force  # For systems older than Server 2012R2

# ScriptBlock

& $newThing = {Write-Host "Hi! I am in a scriptblock"}  # Ampersand required to run as code inside curly brackets.

# Invoke-Command and New-PSSession

Invoke-Command -ScriptBlock { hostname } -ComputerName WEBSRV1

Invoke-Command -ComputerName WEBSRV1 -FilePath C:\GetHostName.ps1  # Invoke a script on a remote device

Invoke-Command -ScriptBlock { Write-Host "The value of foo is $using:serverFilePath" } -ComputerName localhost  # Allows local variables to run on remote systems

# PSSessions

