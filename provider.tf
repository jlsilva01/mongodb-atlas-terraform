terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.13.1"
    }
    ipify = {
      source  = "rerichardjr/ipify"
      version = "1.0.0"
    }
  }
}

provider "mongodbatlas" {
  public_key  = "ozanvqsp"
  private_key = "d2133c5c-5f36-4a53-b794-7d60df1c2a99"
}