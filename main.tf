terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.63.1"
    }
  }
   backend "gcs" {
    bucket  = "bucket-terraform-state-prod-europe-west1"
  }
}

# Configure the Google Cloud provider
provider "google" {
  project     = var.project_id
  region      = var.region
}

# Storage Buckets module
module "storage_bucket" {
    source = "./modules/storage_bucket"
    project_id = var.project_id
}

# Cloud Function module
module "cloud_function" {
    source = "./modules/cloud_function"  
}

# Bigquery Dataset module
module "bigquery_dataset" {
    source = "./modules/bigquery_dataset"  
}