$ResourceGroupParams = @{
    Name = 'az-700-lab-m01-u4-rg'
    Location = 'eastus'
}

$ResourceGroup = New-AzResourceGroup @ResourceGroupParams

$AzureDeploymentParams = @{
    ResourceGroupName = $ResourceGroup.ResourceGroupName
    TemplateFile = '.\m01-unit4\main.bicep'
    TemplateParameterFile = '.\parameters\m01-unit4-parameters.json'
    Verbose = $True
}

New-AzResourceGroupDeployment @AzureDeploymentParams
