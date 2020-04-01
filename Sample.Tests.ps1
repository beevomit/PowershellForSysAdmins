describe 'IIS' {
    Context 'Windows features' {
        it 'installs the Web-Server Windows feature' {
            $parameters = @{
                ComputerName = 'WEBSRV1'
                Name = 'Web-Server'
            }
            (Get-WindowsFeature @parameters).Installed | should be $True
        }
    }
}