Set-Alias -name py3 -value ~\.virtualenvs\py3\Scripts\Activate.ps1

function which($cmd) {
    Get-Command $cmd | % { $_.Path }    
    }

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# New-Alias <alias> <aliased-command>
New-Alias open ii

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
# (& "C:\Users\videopro\miniconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion

