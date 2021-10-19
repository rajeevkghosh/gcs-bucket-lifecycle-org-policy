provider "google" {
 access_token = var.access_token
 project = "tokyo-nomad-323506"
 #credentials = file("../key.json")
}

*resource "google_storage_bucket" "rockstar" {
  name          = "rockstar-bucket"
  location      = "US"
  force_destroy = true
  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 3
     
    }
    action {
      type = "Delete"
    }

  }

}


resource "google_storage_bucket" "hellobucket" {
  name          = "hello-bucket"
  location      = "US"
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

