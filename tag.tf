module "myresource_tagging" {
  source  = "claranet/tagging/azurerm"
  version = "4.0.2"
 
  nb_resources = 1
  resource_ids = [ "43cc8249-6098-3a4a-94be-8e60aeeb7d32" ,]
  behavior     = "merge" # Must be "merge" or "overwrite"

  tags = {
    "foo"        = "bar"
    "monitoring" = "true"
  }
}
