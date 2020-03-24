# CONTROL FLOW

# Conditional Statement

1 -eq 1  # Comparison operator to see if two things are equal

-ne  # Not equal
-gt  # Greater than
-ge  # Greater than or equal to
-lt  # Less than
-le  # Less than or equal to
-contains  # Check to see if the value is in the second

# If statements
if (Test-Connection 192.168.1.1 -Quiet -Count 1) {
    Write-Host -ForegorundColor Green 'The connection is up!'
    Get-Content -Path "\\192.168.1.1\c$\App_configuration.txt"
}

# Else Statement
if (Test-Connection 192.168.1.1 -Quiet -Count 1) {
    Get-Content -Path "\\192.168.1.1\c$\App_configuration.txt"
}
else {
    Write-Error -Message 'The connection is down!'
}

# Else/If Statement
if (Test-Connection 192.168.1.1 -Quiet -Count 1) {
    Get-Content -Path "\\192.168.1.1\c$\App_configuration.txt"
}
elseif (-not (Test-Connection 192.168.1.1 -Quiet -Count 1)){
    Get-Content -Path "\\10.10.10.10\c$\App_configuration.txt"
}
else {
    Write-Error -Message 'The connection is down to the primary server! Data retrieved from backup server'
}

# Switch Statements
switch (expression) {
    expressionvalue {
        # Do something
    }
    expressionvalue {
        # Do somthing for this value
        break  # Keyword to stop evaluating further values
    }
    default {
        # Do the default thing
    }
}

# Using LOOPS

# Foreach Loop
$colorList = @('red', 'green', 'yellow')
foreach ($color in $colorList) {
    Write-Host "The color is: $color"
}

ForEach-Object -InputObject $colorList -Process {
    Write-Host "The color is: $_"
}

$colorList.foreach({Write-Host "The color is: $_"})  #ForEach Method - best one to use

# For Loop
# For iterating over a predetermined number of items
for ($i = 0; $i -lt 10; $i++){
    Write-Host $i
}

# While Loop
$counter = 0
while ($counter -lt 10) {
    $counter
    $counter++
}

# Do/While and Do/Until Loop
do {
    # Commands to perform
} while ($true)

do {
    # Commands to perform
} until ($value -eq $false)
