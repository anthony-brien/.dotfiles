# Check to see if we are currently running "as Administrator"
if (!(Verify-Elevated)) {
    $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
    $newProcess.Verb = "runas";
    [System.Diagnostics.Process]::Start($newProcess);
 
    exit
 }
 
 
 ### Update Help for Modules
 Write-Host "Updating Help..." -ForegroundColor "Yellow"
 Update-Help -Force
 
 
 ### Package Providers
 Write-Host "Installing Package Providers..." -ForegroundColor "Yellow"
 Get-PackageProvider NuGet -Force | Out-Null
 # Chocolatey Provider is not ready yet. Use normal Chocolatey
 #Get-PackageProvider Chocolatey -Force
 #Set-PackageSource -Name chocolatey -Trusted
 
 
 ### Install PowerShell Modules
 Write-Host "Installing PowerShell Modules..." -ForegroundColor "Yellow"
 Install-Module Posh-Git -Scope CurrentUser -Force
 Install-Module oh-my-posh -Scope CurrentUser -Force
 # Install-Module posh-p4 -Scope CurrentUser -Force
 Install-Module PSWindowsUpdate -Scope CurrentUser -Force
 Install-Module Jump.Location -Scope CurrentUser -Force
 Install-Module Get-ChildItemColor -Scope CurrentUser -Force
 Install-Module PSColor -Scope CurrentUser -Force

 
 
 ### Chocolatey
 Write-Host "Installing Desktop Utilities..." -ForegroundColor "Yellow"
 if ((which cinst) -eq $null) {
     iex (new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')
     Refresh-Environment
     choco feature enable -n=allowGlobalConfirmation
 }
 
 choco install GoogleChrome        --limit-output
 choco install P4V
 choco install mattermost-desktop
 choco install slack
 choco install VisualStudioCode
 choco install licecap
 choco install Snoop
 choco install procexp
 choco install dependencywalker
 choco install windirstat
 choco install f.lux
 choco install gitkraken
 choco install cmder
 choco install screenpresso
 choco install todoist
 
 Refresh-Environment
 
 ### Visual Studio Plugins
 Write-Host "Installing Visual Studio extensions..." -ForegroundColor "Yellow"
 if (which Install-VSExtension) {
     ### Visual Studio 2015
     # VsVim
     # Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/59ca71b3-a4a3-46ca-8fe1-0e90e3f79329/file/6390/57/VsVim.vsix
     # Productivity Power Tools 2015
     # Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/34ebc6a2-2777-421d-8914-e29c1dfa7f5d/file/169971/1/ProPowerTools.vsix
 
     ### Visual Studio 2013
     # VsVim
     # Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/59ca71b3-a4a3-46ca-8fe1-0e90e3f79329/file/6390/57/VsVim.vsix
     # Productivity Power Tools 2013
     # Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/dbcb8670-889e-4a54-a226-a48a15e4cace/file/117115/4/ProPowerTools.vsix
     # Web Essentials 2013
     # Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/47/WebEssentials2013.vsix
 }