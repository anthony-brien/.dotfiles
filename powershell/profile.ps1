# Powershell for current user and for all shells
Import-Module posh-git
Import-Module oh-my-posh

# Custom powershell modules
Import-Module C:\Users\abrien\powershell-scripts\Start-Coding -DisableNameChecking
Import-Module C:\Users\abrien\powershell-scripts\Merge-P4 -DisableNameChecking

Set-Theme PowerLine

Import-Module PSColor
# Import-Module posh-p4 -- Conflicts with TabExpansion from posh-git


# Start SshAgent if not already
# Need this if you are using github as your remote git repository
if (! (ps | Where-Object { $_.Name -eq 'ssh-agent'})) {
    Start-SshAgent
}


function mklink ($target, $link)
{
    New-Item -Path $link -ItemType SymbolicLink -Value $target
} 


# TODO -option AllScope prob needs to be renamed to -Force
# Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

# Perforce aliases
#TODO Set-Alias Get-LatestIntegratedChangelist "p4 changes -s submitted -m1"

# Load perforce helper functions
If ($IsWindows)
{
    . ~/powershell-scripts/p4-functions.ps1
}

# Add windows/cmds to PATH
$env:PATH += ";C:/users/abrien/.dotfiles/windows/cmds"