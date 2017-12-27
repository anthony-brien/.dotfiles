:: Sets up symbolic links in the correct locations.

:: vscode
del C:\Users\abrien\AppData\Roaming\Code\User\settings.json
mklink C:\Users\abrien\AppData\Roaming\Code\User\settings.json C:\Users\abrien\.dotfiles\vscode\settings.json