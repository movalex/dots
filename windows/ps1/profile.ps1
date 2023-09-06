# Set-Alias -name py3 -value ~\.virtualenvs\py10\Scripts\Activate.ps1
Set-Alias -name python3 -value python

function pip {
    param(
        [Parameter(
            Mandatory=$True,
            Position = 0
        )]
        [string]
        $firstArg,
     
        [Parameter(
            Mandatory=$False,
            ValueFromRemainingArguments=$true,
            Position = 1
        )][string[]]
        $listArgs
    )
    $count = 0
    if ($listArgs -ne $null) {
        if ($firstArg -ne "install") {
            return $null
        }
        foreach($listArg in $listArgs) {
            python -m pip $firstArg $listArg
            $count++
        }
        if ($count -gt 0) {
            if ($count -eq 1) {
                $end = ""
            }
            elseif ($count -gt 1) {
                $end = "s"
            }
        "`n`nInstalled {0} package{1}`n" -f $count, $end 
        }
    }
    else {
        python -m pip $firstArg
    }
}

function which($cmd) {
    Get-Command $cmd | % { $_.Path }    
    }
function Get-FolderSize {
   [CmdletBinding()]
   Param (
   [Parameter(Mandatory=$true,ValueFromPipeline=$true)] $Path
   )
   if ( (Test-Path $Path) -and (Get-Item $Path).PSIsContainer ) {
      $FolderSize = Get-ChildItem $Path -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum
      $FolderSizeGB = '{0:N2}' -f ($FolderSize.Sum / 1GB)
      [PSCustomObject]@{
         'Path' = $Path
         'Size(GB)' = $FolderSizeGB
         }
      }
}

# function prompt {
#   $path = Split-Path -leaf -path (Get-Location)
#   $user_name = $env:USERNAME
#   $host_name = $env:computername
#   "$user_name`@$host_name`: $path > "
#   }

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/atomic_noms.omp.json" | Invoke-Expression
# oh-my-posh init pwsh | Invoke-Expression

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# New-Alias <alias> <aliased-command>
New-Alias open ii

# set env to C for pqsl
$env:LC_MESSAGES = 'C'


#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
# (& "C:\Users\videopro\miniconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion

# oh-my-posh init pwsh | Invoke-Expression
