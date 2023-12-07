locals {
  #resource_group_name="app-grp"
  location = "eastus"
  address_space = {
    staging = "10.0.0.0/16"
    Test = "10.1.0.0/16"
  }
}