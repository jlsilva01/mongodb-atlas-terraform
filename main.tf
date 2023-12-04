resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = var.org_id
}

resource "mongodbatlas_cluster" "cluster" {
  project_id                  = mongodbatlas_project.project.id
  cluster_type                = "REPLICASET"
  provider_name               = "TENANT"
  backing_provider_name       = "AZURE"
  provider_instance_size_name = "M0"
  name                        = var.cluster_name
  provider_region_name        = var.region
}

data "ipify_ip" "public" {}

resource "mongodbatlas_project_ip_access_list" "ip" {
  project_id = mongodbatlas_project.project.id
  cidr_block = data.ipify_ip.public.ip_cidr
  comment    = "Regra para acesso através do IP Público"
}

resource "mongodbatlas_database_user" "user" {
  username           = var.username
  password           = var.password
  project_id         = mongodbatlas_project.project.id
  auth_database_name = "admin"

  roles {
    role_name     = "readWriteAnyDatabase"
    database_name = "admin"
  }
}