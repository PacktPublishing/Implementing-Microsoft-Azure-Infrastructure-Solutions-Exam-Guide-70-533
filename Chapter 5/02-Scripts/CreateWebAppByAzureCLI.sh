#!/bin/bash


# Create a resource group.
webappname=infra70533pswebapp
resgroupname =infra70533pswebapp-rg
location=westeurope

az group create --location $location --name $resgroupname

# Create an App Service plan in STANDARD tier (minimum required by deployment slots).
az appservice plan create --name $webappname --resource-group $resgroupname --sku S1

# Create a web app.
az webapp create --name $webappname --resource-group $resgroupname \
--plan $webappname


# Copy the result of the following command into a browser to see the web app in the production slot.
echo http://$webappname.azurewebsites.net
