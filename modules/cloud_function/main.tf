# Generates an archive of the source code compressed as a .zip file.
data "archive_file" "source" {
    type        = "zip"
    source_file  = var.source_file
    output_path = var.archive_output_file
}

# Add Source Code Zip To Bucket
resource "google_storage_bucket_object" "zip" {
  name   = var.zip_name
  bucket = var.bucket_name_cloud_function
  source = data.archive_file.source.output_path
}

# Cloud Function
resource "google_cloudfunctions_function" "cloud_function" {
  name        = var.cloud_function_name
  runtime     = "python37"

  available_memory_mb   = 128
  source_archive_bucket = var.bucket_name_cloud_function
  source_archive_object = var.zip_name
  trigger_http          = true
  entry_point           = var.function_python_entry_point
}

