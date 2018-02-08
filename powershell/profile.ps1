# Powershell for current user and for all shells
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme paradox

# VSCode auto loads powershell, which wipes the jumpstat, so don't autoload for now
# Import-Module Jump.Location 


# Start SshAgent if not already
# Need this if you are using github as your remote git repository
if (! (ps | Where-Object { $_.Name -eq 'ssh-agent'})) {
    Start-SshAgent
}


function mklink ($target, $link)
{
    New-Item -Path $link -ItemType SymbolicLink -Value $target
} 

Import-Module Get-ChildItemColor # for ls wide format
 
# TODO -option AllScope prob needs to be renamed to -Force
Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

# Perforce aliases
#TODO Set-Alias Get-LatestIntegratedChangelist "p4 changes -s submitted -m1"

# Load perforce helper functions
If ($IsWindows)
{
    . ~/powershell-scripts/p4-functions.ps1
}