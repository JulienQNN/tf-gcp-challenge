variable "dataset_id" {
  type = string
  default = "dataset-1"
  description = "Id of our dataset"
}

variable "dataset_name" {
  type = string
  default = "dataset-terraform-1"
  description = "Name of our dataset"
}

variable "dataset_description" {
  type = string
  default = "This dataset is a dataset"
  description = "Description of our dataset"
}

variable "location" {
  type = string
  default = "EU"
  description = "The location of the dataset"
}

variable "table_expiration_in_ms" {
  type = number
  default = 3600000
  description = "The expiration time of the dataset"
}

variable "sheet_source_format" {
    type = string
    default = "GOOGLE_SHEETS"
    description = "The format type of the source sheet for the bigquery dataset"
}