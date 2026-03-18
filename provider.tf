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
  # Chaves de acesso devem ser passadas através das variáveis de ambiente:
  # MONGODB_ATLAS_PUBLIC_KEY e MONGODB_ATLAS_PRIVATE_KEY
}