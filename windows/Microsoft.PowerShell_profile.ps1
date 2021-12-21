# set theme in oh-my-posh
oh-my-posh --init --shell pwsh --config C:\Users\baruc\development\git\oh-my-posh\themes\bruno-oh-my-posh-1.omp.json | Invoke-Expression

# trust the PSGallery repo to install modules without prompts
Set-PSRepository -name PSGallery -InstallationPolicy Trusted

# install Windows Terminal Icons
Import-Module -Name Terminal-Icons

Import-Module posh-git

# Improved history search. 
# If command line is blank, up and down arrow just cycle through history.
# If command line has some text, will search history for entries that start with
# the text.
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# enable tab completion
Set-PSReadLineKeyHandler -Key Tab -Function Complete
