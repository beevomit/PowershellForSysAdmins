# Powershell for SysAdmins Chap 6 Install-Software Function

function Install-Software {
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateSet('1','2')]  # Validate only two options can be used
        [string]$Version = 2,  # Assign default value, overridden by assignmnent call, end parameter with comma

        [Parameter(Mandatory, ValueFromPipeline)]  # This parameter is mandatory and accepts pipeline input
        [string]$ComputerName
    )
    process {  # Process block executes each time the function receives pipeline input
        Write-Host "You installed software version $Version on $ComputerName, Yay!"
    }
}

'SVR1','SRV2','SRV3' | Install-Software -Version 2