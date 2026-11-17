
# Phishing Email IOC Extraction
# Project: SOC-002

$EmailPath = Join-Path $PSScriptRoot "..\sample-email\suspicious-email.eml"

if (-not (Test-Path $EmailPath)) {
    Write-Host "Sample email not found." -ForegroundColor Red
    exit
}

$EmailContent = Get-Content $EmailPath -Raw

# Extract sender address
$SenderMatch = [regex]::Match(
    $EmailContent,
    '(?im)^From:.*?<([^>]+)>'
)

$Sender = $SenderMatch.Groups[1].Value

# Extract URLs
$URLMatches = [regex]::Matches(
    $EmailContent,
    'https?://[^\s<>"\)]+'
)

Write-Host "`n=== Phishing Email IOC Analysis ===" -ForegroundColor Cyan
Write-Host "Sender: $Sender"

Write-Host "`nExtracted URLs:" -ForegroundColor Yellow

$Results = foreach ($Match in $URLMatches) {
    $URL = $Match.Value
    $URI = [System.Uri]$URL

    [PSCustomObject]@{
        Sender = $Sender
        URL = $URL
        Domain = $URI.Host
        Scheme = $URI.Scheme
    }

    Write-Host "URL: $URL"
    Write-Host "Domain: $($URI.Host)"
}

if (-not $Results) {
    Write-Host "No URLs found."
    exit
}

# Export results to CSV
$OutputPath = Join-Path $PSScriptRoot "..\iocs\extracted-iocs.csv"

$Results | Export-Csv -Path $OutputPath -NoTypeInformation

Write-Host "`nIOC extraction completed." -ForegroundColor Green
Write-Host "Results saved to: $OutputPath"
