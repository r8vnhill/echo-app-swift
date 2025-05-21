@{
    App = @("Sources/App/main.swift")
    Lib = @("Sources/Lib/Echo.swift", "Tests/EchoTests.swift")
}.GetEnumerator() | ForEach-Object {
    $module = $_.Key
    $files = $_.Value

    Write-Host "📁 Creating structure for module: $module" -ForegroundColor Cyan

    foreach ($file in $files) {
        $dir = Split-Path $file -Parent
        if (-not (Test-Path $dir)) {
            New-Item -Path $dir -ItemType Directory -Force | Out-Null
        }
        New-Item -Path $file -ItemType File -Force | Out-Null
        Write-Host "✅ $file" -ForegroundColor Green
    }
}

Write-Host "🟢 Project initialized successfully." -ForegroundColor Green
