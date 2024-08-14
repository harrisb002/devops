Function Check-Package{
    Param ($packageName)
    $wingetOutput = & winget list --name $packageName --exact

    if ($wingetOutput -match $packageName -and $wingetOutput -ne "No installed package found matching input criteria." ) {
        return $true
    } else {
        return $false
    }
}

$pythonInstalled = Check-Package "Python"

if ($pythonInstalled){
    Write-Host "Python is installed"
}
else{
    Write-Host "Python is not installed"
}