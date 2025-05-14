terraform {
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 6.0"
    }
  }
}

provider "google-beta" {
  project               = var.project_id
  region                = var.region
  billing_project       = var.project_id
  user_project_override = true
}

provider "google" {
  project               = var.project_id
  region                = var.region
  billing_project       = var.project_id
  user_project_override = true
}

module "cdn" {
  source      = "../../gcp-cdn"
  bucket_name = var.bucket_name
  domain      = var.domain
  project_id  = var.project_id
}

module "hosting-bucket" {
  source      = "../../gcp-bucket"
  bucket_name = var.bucket_name
  project_id  = var.project_id
}

module "firestore" {
  source     = "../../gcp-firestore"
  domain     = var.domain
  project_id = var.project_id
}
