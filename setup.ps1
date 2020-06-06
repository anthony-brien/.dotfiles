function mklink ($link, $target)
{
    if (Test-Path $link)
    {
        del $link
    }
    New-Item -Path $link -ItemType SymbolicLink -Value $target
} 

# Sets up symbolic links in the correct locations.

# Office
mklink ~\AppData\Roaming\Microsoft\Templates\Normal.dotm ~\.dotfiles\office\Normal.dotm
New-Item -Path ~\AppData\Roaming\Microsoft\Templates -Name Normal.dotm -ItemType SymbolicLink -Value ~\.dotfiles\office\Normal.dotm

# git
mklink ~\.gitconfig ~\.dotfiles\git\.gitconfig
mklink ~\.gitignore ~\.dotfiles\git\.gitignore

# vscode
mklink ~\AppData\Roaming\Code\User\settings.json ~\.dotfiles\vscode\settings.json

# p4
mklink ~\p4aliases.txt ~\.dotfiles\p4\p4aliases.txt

# powershell
mklink ~\.dotfiles\powershell\profile.ps1 ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 
mklink ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 ~\.dotfiles\powershell\profile.ps1
mklink ~\Documents\WindowsPowerShell\profile.ps1 ~\.dotfiles\powershell\profile.ps1