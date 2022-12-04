# Check to see if we are currently running "as Administrator"
if (!(Verify-Elevated)) {
    $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
    $newProcess.Verb = "runas";
    [System.Diagnostics.Process]::Start($newProcess);
 
    exit
 }
 
 # https://square/docs/setup/setup-square
 
 ### Update Help for Modules
 Write-Host "Updating Help..." -ForegroundColor "Yellow"
 Update-Help -Force
 
 ### Package Providers
 Write-Host "Installing Package Providers..." -ForegroundColor "Yellow"
 Get-PackageProvider NuGet -Force | Out-Null
 
 
 ### Install PowerShell Modules
 Write-Host "Installing PowerShell Modules..." -ForegroundColor "Yellow"
 Install-Module Posh-Git -Scope CurrentUser -Force
 # Install-Module oh-my-posh -Scope CurrentUser -Force
 # Install-Module posh-p4 -Scope CurrentUser -Force

 ### Chocolatey
 Write-Host "Installing Desktop Utilities..." -ForegroundColor "Yellow"
 if ((which cinst) -eq $null) {
     iex (new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')
     Refresh-Environment
     choco feature enable -n=allowGlobalConfirmation
 }

 choco install P4V
 choco install VisualStudioCode
 choco install licecap
 choco install Snoop
 choco install procexp
 choco install dependencywalker
 choco install windirstat
 choco install todoist
 choco install quicklook

 #choco install poshgit
 #choco install oh-my-posh
choco install starship
 
Refresh-Environment