# Creates a Backup off all the content of the folder
Param(
  [string]$Path = './*',            # All content of current folder
  [string]$DestinationPath = './'   # Destination (current folder) 
)

$date = Get-Date -format "yyyy-MM-dd__hh:mm"
$DestinationPath = $DestinationPath + "backup-$date"
Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath $DestinationPath 
Write-Host "Created backup at $('./backup-' + $date + '.zip')"