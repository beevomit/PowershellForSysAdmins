# EXPLORING MODULES

# Modules are groups of similar functions that are packaged together and distributed. 

Get-Module

Get-Command -Module Microsoft.PowerShell.Management

Get-Module -ListAvailable

# "C:\Program Files\Windows\Powershell\Modules" where modules are placed for All Users

$env:PSModulePath  # Module path envrionment variable

Import-Module  # Although newer version of PC should automatically import available modules when called

# Module files have an extension of .psm1 and contain related functions

New-ModuleManifest -Path 'C:\ModuleManifestFilename.psd1'

# [Powershell Gallery](https://www.powershellgallery.com) is a repository of thousands of modules anyone can use
# PowerShellGet Module

Find-Module -Name *VMware*

Install-Module -Name VMware.PowerCLI

Uninstall-Module -Name VMware.PowerCLI
