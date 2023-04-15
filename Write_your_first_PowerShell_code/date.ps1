
#$currentDate = Get-Date
$currentDate = Get-Date -UFormat "%m/%d/%y" 
$myName = read-Host 'Please enter your name'
Write-Output "Today's date is $currentDate."
Write-Output "Today is the day $myName began a PowerShell programming journey."