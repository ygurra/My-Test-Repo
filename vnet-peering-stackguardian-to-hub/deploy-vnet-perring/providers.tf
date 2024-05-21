terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #      version = "=2.79.0"
    }
    

  }
}
provider "azurerm" {
  features {}
}

provider "azurerm" {

  subscription_id = "97ba0370-1ee4-4839-9150-8d444e66e598"

  alias = "FD_PROD"
  features {}
}



provider "azurerm" {

  subscription_id = "de8ffe30-1778-4245-bbac-663c15805d2a"

  alias = "SHARED_PROD"
  features {}
}

provider "azurerm" {

  subscription_id = "19fa33b4-9ad9-493b-9c8b-156e2bbf3b15"

  alias = "GG_PROD"
  features {}
}
provider "azurerm" {

  subscription_id = "8a4c1f29-14cb-4d02-83ea-c0a5746ce85f"

  alias = "TC_PROD"
  features {}
}

provider "azurerm" {

  subscription_id = "01341f38-9515-451c-bfd5-1f826458c6ba"

  alias = "LHIND_DIST_PROD"
  features {}
}

provider "azurerm" {

  subscription_id = "dcbac1d4-39ef-4517-bd40-6334fb7b27b1"

  alias = "LHIND_F_PROD"
  features {}
}

provider "azurerm" {

  subscription_id = "34e475fc-018b-4a59-bb84-b33589284b6c"

  alias = "MYID_INT"
  features {}
}
provider "azurerm" {

  subscription_id = "733b2ec6-f4e4-47ba-9a4c-fe33ee9c6438"

  alias = "MYID_DEV"
  features {}
}

provider "azurerm" {

  subscription_id = "65bc001f-afa7-42fe-b76a-946970d2ed50"

  alias = "MYID_PROD"
  features {}
}

provider "azurerm" {

  subscription_id = "a07e4a06-f703-484a-b5fa-8e0e87afa6c6"

  alias = "LHIND_HIO_PROD"
  features {}
}

provider "azurerm" {

  subscription_id = "45ef98e7-09e3-432e-a860-1555fe0deba0"

  alias = "StackGuardian_Workshop"
  features {}
}


# #

terraform {
  backend "azurerm" {
    storage_account_name = "stavxtfstate498871"
    resource_group_name  = "RG_LHIND_AMS_P_AVX_TFSTATE"
    container_name       = "avx-prod-tfsate"
    subscription_id      = "97ba0370-1ee4-4839-9150-8d444e66e598"
    key                  = "az-vnet-peering-prod-stackguardian.terraform.tfstate"
  }
}