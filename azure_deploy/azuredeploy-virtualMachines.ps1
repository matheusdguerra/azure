$templateFile="C:\Users\matheus.guerra\OneDrive - GOVERNANCABRASIL S A TECNOLOGIA E GESTAO EM SERVICOS\Área de Trabalho\azure deploy\azuredeploy-virtualMachines.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="add-virtualMachines-"+"$today"
$adminUsername="adminUsername"
$adminPassword="adminPassword"


New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -adminUsername $adminUsername `
  -adminPassword ($adminPassword | ConvertTo-SecureString -AsPlainText -Force) `
