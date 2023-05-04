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

variable "source_file"  { 
    type = string
    default = "./modules/cloud_function/main.py"
}

variable "archive_output_file"  { 
    type = string
    default = "./modules/cloud_function/main.zip"
}
variable "zip_name" {
  type = string
  default = "main.zip"
}

variable "cloud_function_name" {
  type = string
  default = "function-python-request"
  description = "The function call the jsonplaceholder typicode API to retrieve the post number 4"
}

variable "function_python_entry_point" {
   type = string
  default = "main"
  description = "The function to execute with python"
}

variable "project_id" {
  type    = string
  default = "docker-training-385607"
}

variable "region" {
  type = string
  default = "europe-west1"
}