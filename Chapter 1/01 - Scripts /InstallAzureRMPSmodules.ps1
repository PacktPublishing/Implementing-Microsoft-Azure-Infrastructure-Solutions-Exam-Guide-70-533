Get-Module -Name PowerShellGet -ListAvailable | Select-Object -Property Name,Version,Path

Install-Module -Name AzureRM -AllowClobber

Import-Module -Name AzureRM

Get-Module AzureRM -ListAvailable | Select-Object -Property Name,Version,Path
