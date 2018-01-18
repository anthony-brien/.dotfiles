# Powershell for current user and for all shells
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme paradox

Import-Module Get-ChildItemColor
 
# TODO -option AllScope prob needs to be renamed to -Force
Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope