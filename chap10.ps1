# PARSING STRUCTURED DATA

# CSV

Import-CSV - Path 'C:\Employees.csv'

Import-CSV - Path 'C:\Employees.csv' | Where-Object { $_.'Last Name' -eq "Bertram' }

Import-CSV - Path 'C:\Employees.csv' -Delimiter "`t"  # To set the delimiter

Import-CSV - Path 'C:\Employees.csv' -Delimiter "`t" -Header 'Employee Name','Dept','Manager'  # Set new header titles

# Create a CSV file

Get-Process | Select-Object -Property Name,Company,Description | Export-CSV -Path 'C:\Processes.csv' -NoTypeInformation

# EXCEL SPREADSHEET

# A CSV file is much easier to manage with Powershell. If you have a simple Excel sheet, export it as a CSV.
# Doug Finke's ImportExcel module.

Install-Module ImportExcel

Get-Process | Export-Excel .\Processes.xlsx

Get-Process | Export-Excel .\Processes.xlsx -WorksheetName 'Worksheet2'  # Adds worksheets to the Excel file

Import-Excel -Path .\Processes.xlsx

Get-ExcelSheetInfo -Path .\Processes.xlsx


