<#
    This function sets the VSTS variable to whatever the agent queue resolves to.
    It uses cURL (http://curl.haxx.se/) to post a request to a Sitecore website which has Sitecore Ship installed.
    Example usage:
    .\get-external-ipaddr.ps1 releaseIPAddrVariable
#>

Param(
    [Parameter(Position=0, Mandatory=$true)]
    [string]$ReleaseIPAddrVar
)

$releaseIPAddr = Invoke-RestMethod http://ipinfo.io/json | Select -exp ip
Write-Host "Variable: " $($ReleaseIPAddrVar)
Write-Host "Current External IP: " $releaseIPAddr
Write-Host "##vso[task.setvariable variable=$ReleaseIPAddrVar;]$releaseIPAddr"
