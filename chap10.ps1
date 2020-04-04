# PARSING STRUCTURED DATA

# CSV

Import-CSV - Path 'C:\Employees.csv'

Import-CSV - Path 'C:\Employees.csv' | Where-Object { $_.'Last Name' -eq "Bertram' }

Import-CSV - Path 'C:\Employees.csv' -Delimiter "`t"  # To set the delimiter

Import-CSV - Path 'C:\Employees.csv' -Delimiter "`t" -Header 'Employee Name','Dept','Manager'  # Set new header titles

# Create a CSV file

Get-Process | Select-Object -Property Name,Company,Description | Export-CSV -Path 'C:\Processes.csv' -NoTypeInformation
