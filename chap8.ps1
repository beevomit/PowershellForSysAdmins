# RUNNING SCRIPTS REMOTELY

Enable-PSRemoting -Force

# ScriptBlock

& $newThing = {Write-Host "Hi! I am in a scriptblock"}  # Ampersand required to run as code inside curly brackets.

# Invoke-Command and New-PSSession

Invoke-Command -ScriptBlock { hostname } -ComputerName WEBSRV1

