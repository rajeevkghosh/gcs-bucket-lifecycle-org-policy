module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-gcs-version-pass.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
