:: Sets up symbolic links in the correct locations.

:: bash
del %HOME%\.bashrc
::dos2unix -n %HOME%\.dotfiles\bash\.bashrc %HOME%\.dotfiles\bash\.bashrc-unix 
mklink %HOME%\.bashrc %HOME%\.dotfiles\bash\.bashrc
del %HOME%\.bash_profile
::dos2unix -n %HOME%\.dotfiles\bash\.bash_profile %HOME%\.dotfiles\bash\.bash_profile-unix 
mklink %HOME%\.bash_profile %HOME%\.dotfiles\bash\.bash_profile

::zsh
del %HOME%\.zshrc
mklink %HOME%\.zshrc %HOME%\.dotfiles\zsh\.zshrc

::mintty
del %HOME%\.minttyrc
mklink %HOME%\.minttyrc %HOME%\.dotfiles\zsh\.minttyrc

:: git
del %HOME%\.gitconfig
mklink %HOME%\.gitconfig %HOME%\.dotfiles\git\.gitconfig
del %HOME%\.gitignore
mklink %HOME%\.gitignore %HOME%\.dotfiles\git\.gitignore

:: vscode
del %HOME%\AppData\Roaming\Code\User\settings.json
mklink %HOME%\AppData\Roaming\Code\User\settings.json %HOME%\.dotfiles\vscode\settings.json

:: cmder
del C:\tools\cmder\config\cmder.lua
mklink C:\tools\cmder\config\cmder.lua %HOME%\.dotfiles\cmder\config\cmder.lua
del C:\tools\cmder\config\ConEmu.xml
mklink C:\tools\cmder\config\ConEmu.xml %HOME%\.dotfiles\cmder\config\ConEmu.xml
del C:\tools\cmder\config\powerline_prompt.lua
mklink C:\tools\cmder\config\powerline_prompt.lua %HOME%\.dotfiles\cmder\config\powerline_prompt.lua
del C:\tools\cmder\config\settings
mklink C:\tools\cmder\config\settings %HOME%\.dotfiles\cmder\config\settings
del C:\tools\cmder\config\user-aliases.cmd
mklink C:\tools\cmder\config\user-aliases.cmd %HOME%\.dotfiles\cmder\config\user-aliases.cmd
del C:\tools\cmder\config\user-ConEmu.xml
mklink C:\tools\cmder\config\user-ConEmu.xml %HOME%\.dotfiles\cmder\config\user-ConEmu.xml
del C:\tools\cmder\config\user-profile.cmd
mklink C:\tools\cmder\config\user-profile.cmd %HOME%\.dotfiles\cmder\config\user-profile.cmd
del C:\tools\cmder\config\user-startup.cmd
mklink C:\tools\cmder\config\user-startup.cmd %HOME%\.dotfiles\cmder\config\user-startup.cmd
del C:\tools\cmder\vscode.bat
mklink C:\tools\cmder\vscode.bat %HOME%\.dotfiles\cmder\vscode.bat

:: hyper terminal
del %HOME%\.hyper.js
mklink %HOME%\.hyper.js %HOME%\.dotfiles\hyperterminal\.hyper.js

::p4
del %HOME%\p4enviro.txt
mklink %HOME%\p4enviro.txt %HOME%\.dotfiles\p4\p4enviro.txt
del %HOME%\p4aliases.txt
mklink %HOME%\p4aliases.txt %HOME%\.dotfiles\p4\p4aliases.txt

::powershell
del %HOME%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
mklink %HOME%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 %HOME%\.dotfiles\powershell\profile.ps1
del %HOME%\Documents\WindowsPowerShell\profile.ps1
mklink %HOME%\Documents\WindowsPowerShell\profile.ps1 %HOME%\.dotfiles\powershell\profile.ps1