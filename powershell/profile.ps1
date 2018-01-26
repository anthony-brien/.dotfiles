# Powershell for current user and for all shells
Import-Module posh-git
Import-Module oh-my-posh
# VSCode auto loads powershell, which wipes the jumpstat, so don't autoload for now
# Import-Module Jump.Location 

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

function mklink ($target, $link)
{
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}

Import-Module Get-ChildItemColor
 
# TODO -option AllScope prob needs to be renamed to -Force
Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

# Perforce aliases
#TODO Set-Alias Get-LatestIntegratedChangelist "p4 changes -s submitted -m1"

# Load perforce helper functions
. ~/powershell-scripts/p4-functions.ps1