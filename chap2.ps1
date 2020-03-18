# VARIABLES

# Always set strict mode when writing scripts to write cleaner code
Set-StrictMode -Version Latest

$VariablesAlwaysBeginsWithDollarSign

$AssignVariableValue = 200

Set-Variable -Name color -Value green
Get-Variable -Name color

# null is nothing, empty
$null 

#Stores the last exit code of the last run executable
$LASTEXITCODE

#Preference Variables
Get-Variable -Name *Preference

# DATA TYPES
