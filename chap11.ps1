# ACTIVE DIRECTORY

# Install RSAT to install the ActiveDirectory Module

Get-Command -Module ActiveDirectory -Verb Get

Get-ADComputer -Filter 'Name -like "*son"'

Search-ADAccount -AccountInactive -TimeSPan 90.00:00:00 -UsersOnly

Get-AdUser - Identity jjones  # Cleaner and faster than using -Filter

# Filtering User Accounts That Have Not Changed Their Password in the Last 30 Days

$today = Get-Date
$30DaysAgo = $today.AddDays(-30)
Get-AdUser -Filter "Enabled -eq 'True' -and passwordlastset -lt '$30DaysAgo'"
