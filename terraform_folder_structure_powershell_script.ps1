$folders = @(
    "environments",
    "modules",
    "modules/azurerm_resource_group",
    "modules/azurerm_storage_account",
    "modules/azurerm_network_modules",
    "modules/azurerm_bastion_host",
    "modules/azurerm_key_vault",
    "modules/azurerm_virtual_machine",
    "modules/azurerm_network_security_group",
    "modules/azurerm_internal_loadbalancer",
    "modules/azurerm_mssql_database",
    "modules/azurerm_application_gateway"
)

$files = @{
    "environments" = @("main.tf", "backend.tf", "variable.tf", "provider.tf", "output.tf", "dev.terraform.tfvars", "prod.terraform.tfvars", "staging.terraform.tfvars");
    "modules/azurerm_resource_group" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_storage_account" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_network_modules" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_bastion_host" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_key_vault" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_virtual_machine" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_network_security_group" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_internal_loadbalancer" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_mssql_database" = @("main.tf", "output.tf", "variable.tf");
    "modules/azurerm_application_gateway" = @("main.tf", "output.tf", "variable.tf")
}

$basePath = "."  # Change this to your desired base directory

foreach ($folder in $folders) {
    $folderPath = Join-Path -Path $basePath -ChildPath $folder
    if (-not (Test-Path -Path $folderPath)) {
        New-Item -ItemType Directory -Path $folderPath | Out-Null
    }
    
    if ($files.ContainsKey($folder)) {
        foreach ($file in $files[$folder]) {
            $filePath = Join-Path -Path $folderPath -ChildPath $file
            if (-not (Test-Path -Path $filePath)) {
                New-Item -ItemType File -Path $filePath -Value "# Terraform configuration for $file" | Out-Null
            }
        }
    }
}

Write-Host "Folders and files or terraform Directory created successfully."