# Dafür wird die gh.exe benötigt. Diese kann man hier herunterladen: https://cli.github.com/
# .\gh.exe issue list --json "title,state,body" -S "type:Work-Package"

# Pfad zur JSON-Eingabedatei
$jsonFilePath = "output.json"

# Pfad zur Markdown-Ausgabedatei
$markdownFilePath = "output.md"

# JSON-Datei einlesen (mit korrekter UTF-8-Kodierung)
$jsonData = Get-Content -Path $jsonFilePath -Raw | ConvertFrom-Json

# Markdown-String erstellen
$markdown = ""
foreach ($item in $jsonData) {
    $markdown += "# $($item.title)`n`n"  # Titel als H1
    $markdown += "$($item.body)`n"   # Body (bereits Markdown)
}

# Markdown-String in Datei schreiben (mit UTF-8-Kodierung)
$markdown | Out-File -FilePath $markdownFilePath -Encoding UTF8

Write-Host "Markdown-Datei '$markdownFilePath' erstellt."