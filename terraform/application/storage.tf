# module "storage" {
#   source = "./vendor/modules/azure//azure/storage_account"

#   name                              = "app"
#   environment                       = var.environment
#   azure_resource_prefix             = var.azure_resource_prefix
#   service_short                     = var.service_short
#   config_short                      = var.config_short
#   public_network_access_enabled     = true
#   infrastructure_encryption_enabled = false
#   create_encryption_scope           = false
#   use_private_storage               = false
#   # Create containers for the application (all containers are private)
#   containers = [
#     { name = "files" },
#     { name = "question-flows" },
#   ]
#   # Configure blob lifecycle management (default: delete after 7 days)
#   container_delete_retention_days = var.container_delete_retention_days

#   blob_delete_after_days = var.blob_delete_after_days
#   blob_delete_retention_days = var.blob_delete_retention_days
# }

# module "storage_private" {
#   source = "./vendor/modules/azure//azure/storage_account"

#   name                          = "priv"
#   environment                   = var.environment
#   azure_resource_prefix         = var.azure_resource_prefix
#   service_short                 = var.service_short
#   config_short                  = var.config_short
#   public_network_access_enabled = false
#   use_private_storage           = true

#   infrastructure_encryption_enabled = true
#   create_encryption_scope           = false

#   # Create containers for the application (all containers are private)
#   containers = [
#     { name = "files" }
#   ]

#   # Configure blob lifecycle management (default: delete after 7 days)
#   container_delete_retention_days = var.container_delete_retention_days

#   blob_delete_after_days = var.blob_delete_after_days

#   subnet_id    = module.network.storage_subnet
#   dnszone_name = module.network.storage_privdns_name
#   dnszone_id   = module.network.storage_privdns_id

# }
