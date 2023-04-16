# Creates a Backup off all the content of the folder
Param(
    [string]$Path = './*',            # All content of current folder by default
    [string]$DestinationPath = './'   # Destination (current folder) 
)

If (-Not (Test-Path $Path)) { # If a nonexistent path is provided
    Throw "The source directory $Path does not exist, please specify an existing directory"
}
$date = Get-Date -format "yyyy-MM-dd"
$DestinationFile = "$($DestinationPath + 'backup-' + $date + '.zip')"

If (-Not (Test-Path $DestinationFile)) {  # If a nonexistent path is provided
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
    Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
}
Else {
    Write-Error "Today's backup already exists"
}