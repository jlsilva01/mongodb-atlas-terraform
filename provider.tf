terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.13.1"
    }
  }
}

provider "mongodbatlas" {
  public_key  = "inserir chave publica"
  private_key = "inserir chave privada"
}