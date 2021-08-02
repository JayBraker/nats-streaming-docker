# Show statements as they run.
Set-PSDebug -Trace 2
# Exit on error.
$ErrorActionPreference = "Stop"

$ver = 'NATS_STREAMING_SERVER 0.22.1'.Split(' ')[1]

Write-Output '-- host info ---'
Write-Output $PSVersionTable
Write-Output (Get-WMIObject win32_operatingsystem).name
Write-Output (Get-WMIObject win32_operatingsystem).OSArchitecture

cd "${ver}/windowsservercore-ltsc2016"
Write-Host "building windowsservercore-ltsc2016"
docker build --tag nats-streaming:0.22.1-windowsservercore-ltsc2016 .
if ($LASTEXITCODE -ne 0) {
    exit 1
}

docker images
