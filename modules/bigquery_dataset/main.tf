resource "google_bigquery_dataset" "default" {
  dataset_id                  = var.dataset_id
  friendly_name               = var.dataset_name
  description                 = var.dataset_description
  location                    = var.location
  default_table_expiration_ms = var.table_expiration_in_ms

}

resource "google_bigquery_table" "sheet" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = "sheet"

  external_data_configuration {
    autodetect    = true
    source_format = var.sheet_source_format

    google_sheets_options {
      skip_leading_rows = 1
    }

    source_uris = [
      "https://docs.google.com/spreadsheets/d/1IjCImtz4bPQbOoj5_QpQw6kVCPL71a7ncrY9YMS2haA/edit#gid=437641014",
    ]
  }
}