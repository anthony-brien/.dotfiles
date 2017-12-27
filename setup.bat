:: Sets up symbolic links in the correct locations.

:: bash
del c:\users\abrien\.bashrc
mklink c:\users\abrien\.bashrc c:\users\abrien\.dotfiles\bash\.bashrc
del c:\users\abrien\.bash_profile
mklink c:\users\abrien\.bash_profile c:\users\abrien\.dotfiles\bash\.bash_profile

:: git
del C:\Users\abrien\.gitconfig
mklink C:\Users\abrien\.gitconfig C:\Users\abrien\.dotfiles\git\.gitconfig
del C:\Users\abrien\.gitignore
mklink C:\Users\abrien\.gitconfig C:\Users\abrien\.dotfiles\git\.gitignore

:: vscode
del C:\Users\abrien\AppData\Roaming\Code\User\settings.json
mklink C:\Users\abrien\AppData\Roaming\Code\User\settings.json C:\Users\abrien\.dotfiles\vscode\settings.json

:: cmder
del C:\Users\abrien\Apps\Cmder\config\cmder.lua
mklink C:\Users\abrien\Apps\Cmder\config\cmder.lua C:\Users\abrien\.dotfiles\cmder\config\cmder.lua
del C:\Users\abrien\Apps\Cmder\config\ConEmu.xml
mklink C:\Users\abrien\Apps\Cmder\config\ConEmu.xml C:\Users\abrien\.dotfiles\cmder\config\ConEmu.xml
del C:\Users\abrien\Apps\Cmder\config\powerline_prompt.lua
mklink C:\Users\abrien\Apps\Cmder\config\powerline_prompt.lua C:\Users\abrien\.dotfiles\cmder\config\powerline_prompt.lua
del C:\Users\abrien\Apps\Cmder\config\settings
mklink C:\Users\abrien\Apps\Cmder\config\settings C:\Users\abrien\.dotfiles\cmder\config\settings
del C:\Users\abrien\Apps\Cmder\config\user-aliases.cmd
mklink C:\Users\abrien\Apps\Cmder\config\user-aliases.cmd C:\Users\abrien\.dotfiles\cmder\config\user-aliases.cmd
del C:\Users\abrien\Apps\Cmder\config\user-ConEmu.xml
mklink C:\Users\abrien\Apps\Cmder\config\user-ConEmu.xml C:\Users\abrien\.dotfiles\cmder\config\user-ConEmu.xml
del C:\Users\abrien\Apps\Cmder\config\user-profile.cmd
mklink C:\Users\abrien\Apps\Cmder\config\user-profile.cmd C:\Users\abrien\.dotfiles\cmder\config\user-profile.cmd
del C:\Users\abrien\Apps\Cmder\config\user-startup.cmd
mklink C:\Users\abrien\Apps\Cmder\config\user-startup.cmd C:\Users\abrien\.dotfiles\cmder\config\user-startup.cmd