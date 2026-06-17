Write-Host "Installing Security Platform..."

pip install pre-commit
pip install git+https://github.com/awslabs/automated-security-helper.git@v3.5.4

pre-commit install
pre-commit install --hook-type pre-push

Write-Host "Security Platform Installed Successfully"
