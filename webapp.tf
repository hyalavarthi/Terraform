resource "azurerm_app_service_plan" "ASP" {  
  name                = "${var.azurerm_app_service_plan}"  
  location            = "${var.location}"  
  resource_group_name = "${azurerm_resource_group.RG.name}"
  
  sku {  
    tier = "Standard"  
    size = "S1"  
  }  
}  
  
resource "azurerm_app_service" "Webapp" {  
  name                = "${var.azurerm_app_service}"  
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.RG.name}"
  app_service_plan_id = "${azurerm_app_service_plan.ASP.id}" 
  
  app_settings = {  
    "DeviceName" = "SampleDevice",  
    "DeviceId" = "2"  
  }  
}  