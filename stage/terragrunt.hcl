remote_state {
    backend = "azurerm"
    config = {
        key = "${path_relative_to_include()}/terraform.tfstate"
        resource_group_name = "RemoveTerraform"
        storage_account_name = "tsushistatetf"
        container_name = "tfstate"
    }
}

inputs = {
    location = "westus"
    resource_group_name = "testResourceGroup1-10"
}