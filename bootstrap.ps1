Write-Host "Installing Security Platform..."

# ==========================================
# Python Dependencies
# ==========================================

pip install pre-commit
pip install git+https://github.com/awslabs/automated-security-helper.git@v3.5.4
pip install semgrep

# ==========================================
# Verify npm
# ==========================================

npm --version

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: npm is not installed"
    exit 1
}

# ==========================================
# Create sample package.json (only if missing)
# ==========================================

if (!(Test-Path "package.json")) {

@"
{
  "name": "ash-security-platform-test",
  "version": "1.0.0",
  "dependencies": {
    "lodash": "4.17.11"
  }
}
"@ | Out-File -Encoding utf8 package.json

}

# ==========================================
# Generate package-lock.json
# ==========================================

if (!(Test-Path "package-lock.json")) {

    Write-Host "Generating package-lock.json..."
    npm install --package-lock-only

}

# ==========================================
# Install Syft
# ==========================================

Write-Host "Installing Syft..."

winget install Anchore.Syft -e --silent --accept-package-agreements --accept-source-agreements

# ==========================================
# Install Grype
# ==========================================

Write-Host "Installing Grype..."

winget install Anchore.Grype -e --silent --accept-package-agreements --accept-source-agreements

# ==========================================
# Add Syft/Grype to CURRENT session PATH
# (required for ASH to detect them immediately)
# ==========================================

$syftPath = Get-ChildItem `
    "$env:LOCALAPPDATA\Microsoft\WinGet\Packages" `
    -Recurse `
    -Filter syft.exe `
    -ErrorAction SilentlyContinue |
    Select-Object -First 1

if ($syftPath) {

    $env:PATH += ";$($syftPath.DirectoryName)"

    Write-Host "Syft found at:"
    Write-Host $syftPath.FullName

}

$grypePath = Get-ChildItem `
    "$env:LOCALAPPDATA\Microsoft\WinGet\Packages" `
    -Recurse `
    -Filter grype.exe `
    -ErrorAction SilentlyContinue |
    Select-Object -First 1

if ($grypePath) {

    $env:PATH += ";$($grypePath.DirectoryName)"

    Write-Host "Grype found at:"
    Write-Host $grypePath.FullName

}

# ==========================================
# Verify Syft
# ==========================================

Write-Host "Validating Syft..."

syft version

if ($LASTEXITCODE -ne 0) {

    Write-Host "ERROR: Syft installation failed"
    exit 1

}

# ==========================================
# Verify Grype
# ==========================================

Write-Host "Validating Grype..."

grype version

if ($LASTEXITCODE -ne 0) {

    Write-Host "ERROR: Grype installation failed"
    exit 1

}

# ==========================================
# Refresh ASH Dependencies
# ==========================================

ash dependencies update

# ==========================================
# Install Git Hooks
# ==========================================

pre-commit install
pre-commit install --hook-type pre-push

Write-Host "Security Platform Installed Successfully"