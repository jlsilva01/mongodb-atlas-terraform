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