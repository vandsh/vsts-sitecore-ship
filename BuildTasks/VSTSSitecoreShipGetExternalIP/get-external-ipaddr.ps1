$releaseIPAddr = Invoke-RestMethod http://ipinfo.io/json | Select -exp ip
Write-Host "Variable: " $($ReleaseIPAddrVar)
Write-Host "Current External IP: " $releaseIPAddr
Write-Host "##vso[task.setvariable variable=$ReleaseIPAddrVar;]$releaseIPAddr"
