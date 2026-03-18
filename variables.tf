variable "org_id" {
  type        = string
  description = "MongoDB Atlas Organization ID"
  default     = "6344...ba96"
}

variable "project_name" {
  type        = string
  description = "The name of the MongoDB Atlas project"
  default     = "eng_dados_satc"
}

variable "region" {
  type        = string
  description = "The AWS/Azure region where the cluster will be deployed"
  default     = "US_EAST_2"
}

variable "cluster_name" {
  type        = string
  description = "The name of the MongoDB Atlas cluster"
  default     = "atlasdemoengdados"
}

variable "username" {
  type        = string
  description = "The username for the database user"
  sensitive   = true
}

variable "password" {
  type        = string
  description = "The password for the database user"
  sensitive   = true
}
