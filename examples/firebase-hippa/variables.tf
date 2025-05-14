
variable "bucket_name" {
  description = "The name of the GCP bucket where the static files are stored."
  type        = string
}

variable "domain" {
  description = "The domain name for the CDN."
  type        = string
  nullable    = false
  validation {
    condition     = can(regex("^[a-zA-Z0-9.-]+$", var.domain))
    error_message = "The domain name must be a valid domain."
  }
}

variable "project_id" {
  description = "The GCP project ID."
  type        = string
  nullable    = false
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]+$", var.project_id))
    error_message = "The project ID must be a valid GCP project ID."
  }
}

variable "region" {
  description = "The GCP region for the Firebase Hosting site."
  type        = string
  default     = "us-central"
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]+$", var.region))
    error_message = "The region must be a valid GCP region."
  }
}


