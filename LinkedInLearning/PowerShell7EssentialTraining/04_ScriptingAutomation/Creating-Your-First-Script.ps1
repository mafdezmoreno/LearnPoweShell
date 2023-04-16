# Get-Service only works on windows
$myOS = $PSVersionTable.OS
Write-Host $myOS

if ($myOS.Contains("Darwin")) {
    $process = Read-Host "Introduce the process to analize: "
    $variable = Get-Process -ProcessName $process
    $variable | Format-List

    Write-Host ""
    Write-Host $variable.Name  -ForegroundColor Yellow
    Write-Host $variable.ID  -ForegroundColor Green
    Write-Host $variable.CPU  -ForegroundColor Blue
    Write-Host ""
}
else {
    $variable = Get-Service -Name 'Dnscache'
    Write-Host $variable
    $variable | Format-List
    Write-Host $variable.Name  -ForegroundColor Yellow
    Write-Host $variable.DisplayName  -ForegroundColor Green
    Write-Host $variable.Description -ForegroundColor Blue
}
