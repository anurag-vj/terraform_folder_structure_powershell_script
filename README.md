# terraform_folder_structure_powershell_script
## Overview

This repository contains a PowerShell script to create a standardized folder structure for Terraform projects. The script helps in organizing Terraform configuration files, modules, and other related files in a consistent manner.

## Folder Structure

The script creates the following folder structure:

```
terraform_project/
├── modules/
├── environments/
│   ├── dev/
│   ├── prod/
│   └── staging/
├── scripts/
└── README.md
```

- `modules/`: Contains reusable Terraform modules.
- `environments/`: Contains environment-specific configurations.
    - `dev/`: Development environment.
    - `prod/`: Production environment.
    - `staging/`: Staging environment.
- `scripts/`: Contains utility scripts.
- `README.md`: Project documentation.

## Usage

To use the script, run the following command in PowerShell:

```powershell
.\create_terraform_structure.ps1 -ProjectName "your_project_name"
```

Replace `"your_project_name"` with the desired name of your Terraform project.

## Prerequisites

- PowerShell 5.0 or higher
- Terraform installed

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.
