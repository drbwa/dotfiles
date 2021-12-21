# set theme in oh-my-posh
oh-my-posh --init --shell pwsh --config C:\Users\baruc\development\git\oh-my-posh\themes\bruno-oh-my-posh-1.omp.json | Invoke-Expression

# trust the PSGallery repo to install modules without prompts
Set-PSRepository -name PSGallery -InstallationPolicy Trusted

# install Windows Terminal Icons
Import-Module -Name Terminal-Icons