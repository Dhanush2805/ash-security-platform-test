Write-Host "Installing Security Platform..."

pip install pre-commit
pip install git+https://github.com/awslabs/automated-security-helper.git@v3.5.4

pip install semgrep

# ensure ASH plugin dependency resolution is updated
ash dependencies

pre-commit install
pre-commit install --hook-type pre-push

Write-Host "Security Platform Installed Successfully"
