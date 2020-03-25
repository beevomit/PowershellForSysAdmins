# ERROR HANDLING

Get-ChildItem -Path ".\bogusDirectory" -ErrorAction Stop

# Stop
# SilentlyContinue
# Inquire - Prompts user before continue
# Ignore
# Continue

$ErrorActionPreference = Stop

try {
    # initial code
} catch {
    # code that runs if terminating error
} finally {
    # code that runs at the end...good for clean up code like disconnecting sessions etc.
}

$Error  # Built0in variable for that stores an array of the errors returned in the curent session
