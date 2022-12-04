function mklink ($link, $target)
{
    if (Test-Path $link)
    {
        del $link
    }
    New-Item -Path $link -ItemType SymbolicLink -Value $target
} 

# Sets up symbolic links in the correct locations.

# git
mklink ~\.gitconfig ~\.dotfiles\git\.gitconfig
mklink ~\.gitignore ~\.dotfiles\git\.gitignore

# vscode
mklink ~\AppData\Roaming\Code\User\settings.json ~\.dotfiles\vscode\settings.json

# p4
mklink ~\p4aliases.txt ~\.dotfiles\p4\p4aliases.txt

# powershell
# ~\.dotfiles does not work in Powershell Core
New-Item -Path $profile.CurrentUserAllHosts -ItemType SymbolicLink -Value C:\Users\abrien\.dotfiles\powershell\profile.ps1 