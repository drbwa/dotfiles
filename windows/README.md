# Excursions into software development on Windows

## PowerShell

Install the latest version of Powershell from the Windows Store or via 
`winget install Microsoft.PowerShell`.

Install Windows Terminal from the Windows Store.

Go into Settings and set the latest PowerShell as your default shell. You can
modify the JSON configuration to chnage the order in which your shells appear.

Install Caskaydia Cover Nerd Font. Can download it from <https://www.nerdfonts.com/>.
Install to Windows fonts. Configure as font in Windows Terminal.

Install oh-my-posh:

```powershell
winget install JanDeDobbeleer.OhMyPosh
```

Clone and oh-my-posh GitHub repository and pick or modify a theme. Your latest 
theme is in this repo. 

Install a theme by adding this to your `$PROFILE` and sourcing your `$PROFILE`:

`oh-my-posh --init --shell pwsh --config ~/development/git/dotfiles/windows/bruno-oh-my-posh-1.omp.json.omp.json | Invoke-Expression`

Install Terminal icons:

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery
```

Add this to your `$PROFILE`:

```powershell
Import-Module -Name Terminal-Icons
```

## Git with SSH keys

That's an entire adventure for another time. Need to enable OpenSSH service. 
Need to install Git for Windows. Need to set `$GIT_SSH` to your OpenSSH executable.

```powershell
$SSHPath = (Get-Command -Name ‘ssh.exe’).Source
[Environment]::SetEnvironmentVariable(‘GIT_SSH’, $SSHPath, ‘User’)
```
