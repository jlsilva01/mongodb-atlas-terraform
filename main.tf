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

resource "mongodbatlas_project_ip_access_list" "test" {
  project_id = mongodbatlas_project.project.id
  cidr_block = "0.0.0.0/0"
  comment    = "cidr block for tf acc testing - allow all"
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

# output values
output "project_id" {
  value = mongodbatlas_project.project.id
}

output "mongodb_version" {
  value = mongodbatlas_cluster.cluster.mongo_db_version
}

output "connection_strings" {
  value = mongodbatlas_cluster.cluster.connection_strings
}

output "state_name" {
  value = mongodbatlas_cluster.cluster.state_name
}