Param(
    #[Parameter(Mandatory)]
    [Parameter(Mandatory, HelpMessage = "Please provide a valid file name")]
    $PathFileName
)

If (-Not $PathFileName -eq '') {
   New-Item $PathFileName
   Write-Host "File $PathFileName created at path $PathFileName"
} Else {
   Write-Error "FileName cannot be empty"
}