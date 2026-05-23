if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {

    Start-Process powershell -Verb RunAs -ArgumentList "-File `"$PSCommandPath`""
    exit
}
Write-Host -ForegroundColor Magenta "Services Checker | DS: @imsandy.dll"
Write-Host ""

Get-Service SysMain
Get-Service PcaSvc
Get-Service DiagTrack
Get-Service EventLog
Get-Service bam
Get-Service Appinfo
Get-Service DPS

Write-Host ""

$diag = Get-Service DiagTrack

if ($diag.Status -eq "Stopped") {
    Write-Host -ForegroundColor Magenta "Il diagtrack e' stoppato, se ora e' running l'utente ha stoppato il servizio manualmente..."
    Start-Service DiagTrack
    Get-Service DiagTrack
}

Write-Host ""
Read-Host "Clicca per uscire dallo script"