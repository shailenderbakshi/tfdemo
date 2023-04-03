module "resource_group"{
    source           = "./Modules/ResourceGroup"
    rsg_Name         = var.rsg_Name
    location         = var.location

}

module "vNet"{
    source                 = "./Modules/vNET"
    vnet_Name              = var.vnet_Name
    resource_group_name    = module.resource_group.name
    location               = var.location
    address_space          = var.vnet_cidr
    dns_servers            = var.dns_servers
}


module "Subnet"{
    source                 = "./Modules/Subnet"
    subnet_name            = var.subnet_name
    rsg_Name               = module.resource_group.name
    vnet_name              = module.vNet.name
    subnet_prefixes        = var.subnet_prefixes

}

module "ADF"{
    source                 = "./Modules/ADF"
    rsg_Name               = module.resource_group.name
    location               = var.location
    adf_name               = var.adf_name
    
}

module "AppServicePlan"{
    source                 = "./Modules/AppServicePlan"
    rsg_Name               = module.resource_group.name
    location               = var.location
    app_plan_name          = var.app_plan_name
    
}

module "databricks-workspace" {
    source              = "./Modules/azure-databricks-workspace"
    workspace_name      = var.workspace_name
    resource_group_name = module.resource_group.name
    location            = var.location
    // vnet_id             = var.vnet_id
    // private_subnet_name = var.private_subnet_name
    // public_subnet_name  = var.public_subnet_name
    // tags                = var.tags
}

module "logic-apps" {
    source              = "./Modules//LogicApp"
    workspace_name      = var.logicapp_name
    resource_group_name = module.resource_group.name
    location            = var.location