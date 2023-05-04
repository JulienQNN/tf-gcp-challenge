# Create new storage bucket in the EU region for the tf state
resource "google_storage_bucket" "bucket-current_tf_state" {
  name          = var.bucket_name_current_state
  location      = var.bucket_location
  storage_class = var.bucket_storage_class
  uniform_bucket_level_access = true
}

# Create new storage bucket in the EU region for the cf zip to execute
resource "google_storage_bucket" "bucket-current_cf" {
  name          = var.bucket_name_cloud_function
  location      = var.bucket_location
  storage_class = var.bucket_storage_class
  uniform_bucket_level_access = true
}