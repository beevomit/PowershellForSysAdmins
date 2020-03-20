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

$foo = 1  # Integer
$foo = 'one'  # String 
$foo = $true  # Boolean

$num = 1
$num.GetType().name

$sentence = 'Today you learned that Powershell loves the color blue.'
$language = 'Powershell'
$color = 'blue'
$sentence = "Today you learned that $language loves the color $color."  # Notice double quotes used to express variables. 
# Single qoutes tell Powershell this is EXACTLY what you mean. Double quotes express variables.

#OBJECTS
# Each object has a class, properties, and methods.
$color = 'red'
Select-Object -InputObject $color -Property *  # Find all object properties
$color.Length  # Object property dot notation

Get-Member -InputObject $color  # Gets ALL methods and properties
$color.Remove(1,1)  # Use dot notation to call object methods like Remove()

# DATA STRUCTURES


