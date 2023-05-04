# terraform-init-gcp

## Requirements
You need to enable both [API Cloud Build](https://console.cloud.google.com/apis/api/cloudbuild.googleapis.com) & [Cloud Resource Manager](https://console.cloud.google.com/apis/api/cloudresourcemanager.googleapis.com) in your GCP Console.

## Description
To create the buckets you need to first run terraform init without the cloud function in the main.tf file.
ls

`The main.py file is compressed automatically, it's explained in the main.tf file of the cloud_function module.`
- terraform init
- terraform plan (optional)
- terraform apply
