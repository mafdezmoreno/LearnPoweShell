# If after execute the following script you make:
# $PI = 3
# and then you run this script:

$PI = 3
Write-Host "The value of `$PI is now $PI, inside the script"

# Your script does two things. First, it creates a script-local
# variable $PI that shadows the $PI variable defined in the local
# scope. Next, the second row in the script interpolates the $PI
# variable because you used double quotation marks. It escapes
# interpolation the first time because you used a back tick.