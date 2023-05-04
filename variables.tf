variable "region" {
  type = string
  default = "europe-west1"
}

variable "zone" {
  type    = string
  default = "europe-west1-d"
}

variable "project_id" {
  type    = string
  default = "docker-training-385607"
}

variable "bucket_name_current_state" {
  type = string
  default = "bucket-terraform-state-prod-europe-west1"
  description = "The name of our terraform state bucket"
}
