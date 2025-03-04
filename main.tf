resource "google_storage_bucket" "my-bucket" {
  name          = "github"
  location      = "US"
  Project       ="tt-dev-01"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}
