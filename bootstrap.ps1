Write-Host "Installing Security Platform..."

pip install pre-commit

pre-commit install

pre-commit install --hook-type pre-push

pre-commit autoupdate

Write-Host "Security Platform Installed Successfully"
