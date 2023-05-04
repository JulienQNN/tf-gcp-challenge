variable "bucket_name_current_state" {
  type = string
  default = "bucket-terraform-state-prod-europe-west1"
  description = "The name of our terraform state bucket"
}

variable "bucket_name_cloud_function" {
  type = string
  default = "bucket-terraform-cf-prod-europe-west1"
  description = "The name of our cloud function API response"
}

variable "bucket_location" {
  type = string
  default = "europe-west1"
}

variable "project_id" {
  type = string
  default = "docker-training-385607"
}

variable "bucket_storage_class" {
  type = string
  default = "STANDARD"
}