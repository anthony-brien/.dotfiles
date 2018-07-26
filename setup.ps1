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

# cmder
mklink C:\tools\cmder\config\cmder.lua ~\.dotfiles\cmder\config\cmder.lua
mklink C:\tools\cmder\config\ConEmu.xml ~\.dotfiles\cmder\config\ConEmu.xml
mklink C:\tools\cmder\config\powerline_prompt.lua ~\.dotfiles\cmder\config\powerline_prompt.lua
mklink C:\tools\cmder\config\settings ~\.dotfiles\cmder\config\settings
mklink C:\tools\cmder\config\user-aliases.cmd ~\.dotfiles\cmder\config\user-aliases.cmd
mklink C:\tools\cmder\config\user-ConEmu.xml ~\.dotfiles\cmder\config\user-ConEmu.xml
mklink C:\tools\cmder\config\user-profile.cmd ~\.dotfiles\cmder\config\user-profile.cmd
mklink C:\tools\cmder\config\user-startup.cmd ~\.dotfiles\cmder\config\user-startup.cmd
mklink C:\tools\cmder\vscode.bat ~\.dotfiles\cmder\vscode.bat

# p4
mklink ~\p4aliases.txt ~\.dotfiles\p4\p4aliases.txt

# powershell
mklink ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 ~\.dotfiles\powershell\profile.ps1
mklink ~\Documents\WindowsPowerShell\profile.ps1 ~\.dotfiles\powershell\profile.ps1