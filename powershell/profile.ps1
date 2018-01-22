# Powershell for current user and for all shells
Import-Module posh-git
Import-Module oh-my-posh
Import-Module ZLocation
Set-Theme paradox

# Start SshAgent if not already
# Need this if you are using github as your remote git repository
if (! (ps | ? { $_.Name -eq 'ssh-agent'})) {
    Start-SshAgent
}

If ($IsMacOS -eq 'True') 
{
    # redefine the default oh-my-posh prompt as it causes issues on MacOS
    function prompt {
        "`n" + $(Get-Location) + " " + $(Write-VcsStatus) + " "
    }
}

Import-Module Get-ChildItemColor
 
# TODO -option AllScope prob needs to be renamed to -Force
Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope