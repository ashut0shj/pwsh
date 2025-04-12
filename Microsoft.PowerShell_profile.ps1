$env:POSH_MODULES_PATH = "C:\Users\ashut\Documents\PowerShell\Modules\oh-my-posh\7.85.2"
Import-Module oh-my-posh


oh-my-posh init pwsh --config "C:\Users\ashut\AppData\Local\Programs\oh-my-posh\themes\bubblesextra.omp.json" | Invoke-Expression


Import-Module -Name Terminal-Icons

Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView

"
Hello Ashutosh !"
