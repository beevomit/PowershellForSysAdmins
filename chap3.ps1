# COMBINING COMMANDS

# Pipeline

Get-Service -Name 'wuauserv' | Start-Service  # Pipes the output of the Get-Service command into the Start-Service command

# Use a txt file for multiple services
# First create the txt file
Add-Content -Path 'c:\Services.txt' -Value 'Wuauserv'
Add-Content -Path 'c:\Services.txt' -Value 'W32Time'

Get-Content -Path 'c:\Services.txt'  # Verify content of txt file

Get-Content -Path 'c:\Services.txt' | Get-Service  # View services

Get-Content -Path 'c:\Services.txt' | Get-Service | Start-Service  # Pipe the services into Start-Service

$serviceObject = [PSCustomObject]@{Name = 'wuauserv'; ComputerName = 'SERV1'}
$serviceObject | Get-Service

# Writing Scripts
# See uploaded file in this repository

