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
del %HOME%\Apps\Cmder\config\cmder.lua
mklink %HOME%\Apps\Cmder\config\cmder.lua %HOME%\.dotfiles\cmder\config\cmder.lua
del %HOME%\Apps\Cmder\config\ConEmu.xml
mklink %HOME%\Apps\Cmder\config\ConEmu.xml %HOME%\.dotfiles\cmder\config\ConEmu.xml
del %HOME%\Apps\Cmder\config\powerline_prompt.lua
mklink %HOME%\Apps\Cmder\config\powerline_prompt.lua %HOME%\.dotfiles\cmder\config\powerline_prompt.lua
del %HOME%\Apps\Cmder\config\settings
mklink %HOME%\Apps\Cmder\config\settings %HOME%\.dotfiles\cmder\config\settings
del %HOME%\Apps\Cmder\config\user-aliases.cmd
mklink %HOME%\Apps\Cmder\config\user-aliases.cmd %HOME%\.dotfiles\cmder\config\user-aliases.cmd
del %HOME%\Apps\Cmder\config\user-ConEmu.xml
mklink %HOME%\Apps\Cmder\config\user-ConEmu.xml %HOME%\.dotfiles\cmder\config\user-ConEmu.xml
del %HOME%\Apps\Cmder\config\user-profile.cmd
mklink %HOME%\Apps\Cmder\config\user-profile.cmd %HOME%\.dotfiles\cmder\config\user-profile.cmd
del %HOME%\Apps\Cmder\config\user-startup.cmd
mklink %HOME%\Apps\Cmder\config\user-startup.cmd %HOME%\.dotfiles\cmder\config\user-startup.cmd

:: hyper terminal
del %HOME%\.hyper.js
mklink %HOME%\.hyper.js %HOME%\.dotfiles\hyperterminal\.hyper.js