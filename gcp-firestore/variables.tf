variable "domain" {
  description = "The domain name for the Firebase Hosting site."
  type        = string
  default     = ""
}

variable "gcp_project_id" {
  description = "The GCP project ID."
  type        = string
  nullable    = false
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]+$", var.gcp_project_id))
    error_message = "The project ID must be a valid GCP project ID."
  }
}

variable "gcp_region" {
  description = "The GCP region for the Firebase Hosting site."
  type        = string
  default     = "us-central"
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]+$", var.gcp_region))
    error_message = "The region must be a valid GCP region."
  }
}


